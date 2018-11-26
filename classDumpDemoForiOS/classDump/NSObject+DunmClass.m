//
//  NSObject+DunmClass.m
//  debuq
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "NSObject+DunmClass.h"

@implementation NSObject (DunmClass)
+(NSString *)dunmClass:(Class )currentClass {
    NSMutableString *dumpString = [NSMutableString string];
    unsigned int protocolCount;
    Protocol *__unsafe_unretained* protocolArray=class_copyProtocolList(currentClass, &protocolCount);
    NSMutableString *inlineProtocolsString=[[NSMutableString alloc] init];
    NSMutableArray *inlineProtocols=[NSMutableArray array];
    for (unsigned t=0; t<protocolCount; t++){
        if (t==0){
            [inlineProtocolsString appendString:@" <"];
        }
        const char *protocolName=protocol_getName(protocolArray[t]);

        NSMutableString *addedProtocol=[[NSMutableString alloc] initWithCString:protocolName encoding:NSUTF8StringEncoding];
        if (t<protocolCount-1){
            [addedProtocol appendString:@", "];
        }
        [inlineProtocolsString appendString:addedProtocol];
        if (t==protocolCount-1){
            [inlineProtocolsString appendString:@">"];
        }
    }



    NSMutableArray *classesInClass=[NSMutableArray array];
    NSString *superclassString=NO ? ([[currentClass superclass] description] !=nil ? [NSString stringWithFormat:@" : %@",[[currentClass superclass] description]] : @"") : @" : _UKNOWN_SUPERCLASS_";

    [dumpString appendFormat:@"\n\t%@%@",NSStringFromClass(currentClass),superclassString];

    [dumpString appendFormat:@"%@",inlineProtocolsString];

    unsigned int ivarOutCount;
    Ivar * ivarArray=class_copyIvarList(currentClass, &ivarOutCount);
    if (ivarOutCount>0){
        [dumpString appendString:@" {\n"];
        for (unsigned x=0;x<ivarOutCount;x++){
            Ivar currentIvar=ivarArray[x];
            const char * ivarName=ivar_getName(currentIvar);

            NSString *ivarNameNS=[NSString stringWithCString:ivarName encoding:NSUTF8StringEncoding];
            const char * ivarType=ivar_getTypeEncoding(currentIvar);

            NSString *ivarTypeString=commonTypes([NSString stringWithCString:ivarType encoding:NSUTF8StringEncoding],&ivarNameNS,YES);

            if ([ivarTypeString rangeOfString:@"@\""].location!=NSNotFound){
                ivarTypeString=[ivarTypeString stringByReplacingOccurrencesOfString:@"@\"" withString:@""];
                ivarTypeString=[ivarTypeString stringByReplacingOccurrencesOfString:@"\"" withString:@"*"];
                NSString *classFoundInIvars=[ivarTypeString stringByReplacingOccurrencesOfString:@"*" withString:@""];
                if (![classesInClass containsObject:classFoundInIvars]){


                    if ([classFoundInIvars rangeOfString:@"<"].location!=NSNotFound ){

                        int firstOpening=[classFoundInIvars rangeOfString:@"<"].location;
                        if (firstOpening!=0){
                            NSString *classToAdd=[classFoundInIvars substringToIndex:firstOpening];
                            if (![classesInClass containsObject:classToAdd]){
                                [classesInClass addObject:classToAdd];
                            }
                        }

                        NSString *protocolToAdd=[classFoundInIvars substringFromIndex:firstOpening];
                        protocolToAdd=[protocolToAdd stringByReplacingOccurrencesOfString:@"<" withString:@""];
                        protocolToAdd=[protocolToAdd stringByReplacingOccurrencesOfString:@">" withString:@""];
                        protocolToAdd=[protocolToAdd stringByReplacingOccurrencesOfString:@"*" withString:@""];
                        if (![inlineProtocols containsObject:protocolToAdd]){
                            [inlineProtocols addObject:protocolToAdd];
                        }

                    }
                    else{
                        [classesInClass addObject:classFoundInIvars];
                    }
                }
                if ([ivarTypeString rangeOfString:@"<"].location!=NSNotFound){
                    ivarTypeString=[ivarTypeString stringByReplacingOccurrencesOfString:@">*" withString:@">"];
                    if ([ivarTypeString rangeOfString:@"<"].location==0){
                        ivarTypeString=[@"id" stringByAppendingString:ivarTypeString];
                    }
                    else{
                        ivarTypeString=[ivarTypeString stringByReplacingOccurrencesOfString:@"<" withString:@"*<"];
                    }
                }
            }

            NSString *formatted=[NSString stringWithFormat:@"\n\t%@ %@;",ivarTypeString,ivarNameNS];
            [dumpString appendString:formatted];

        }
        [dumpString appendString:@"\n\t}"];

    }
    free(ivarArray);

    if ([inlineProtocols count]>0){

        NSMutableString *inlineProtocolsString=[[NSMutableString alloc] init];
        [inlineProtocolsString appendString:@"@protocol "];
        for (int g=0; g<inlineProtocols.count; g++){
            if (g<inlineProtocols.count-1){
                [inlineProtocolsString appendString:[NSString stringWithFormat:@"%@, ",[inlineProtocols objectAtIndex:g]]];
            }
            else{
                [inlineProtocolsString appendString:[NSString stringWithFormat:@"%@;\n",[inlineProtocols objectAtIndex:g]]];
            }
        }
        int interfaceLocation=[dumpString rangeOfString:@"@interface"].location;
        if (interfaceLocation > 0) {

            [dumpString insertString:inlineProtocolsString atIndex:interfaceLocation];
        }

    }



    unsigned int propertiesCount;
    NSMutableString *propertiesString=[[NSMutableString alloc] init];
    objc_property_t *propertyList=class_copyPropertyList(currentClass,&propertiesCount);

    for (unsigned int b=0; b<propertiesCount; b++){

        const char *propname=property_getName(propertyList[b]);
        const char *attrs=property_getAttributes(propertyList[b]);

        NSString *newString=propertyLineGenerator([NSString stringWithCString:attrs encoding:NSUTF8StringEncoding],[NSString stringWithCString:propname encoding:NSUTF8StringEncoding]);
        if ([propertiesString rangeOfString:newString].location==NSNotFound){
            [propertiesString appendString:newString];
        }
        //        [newString release];
    }
    free(propertyList);



    int propLenght=[propertiesString length];
    NSMutableArray *synthesized=[[propertiesString componentsSeparatedByString:@"\n"] mutableCopy];
    __block int longestLocation=0;

    [synthesized enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        NSString * string = obj;
        string=[string stringByReplacingOccurrencesOfString:@"\t" withString:@""];
        string=[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        int location=[string rangeOfString:@";"].location;
        if ([string rangeOfString:@";"].location==NSNotFound){

            if (location>longestLocation){
                longestLocation=location;
            }
        }

    }];


    NSArray *propertiesStringArry = [propertiesString componentsSeparatedByString:@"\n"];
    propertiesString = [propertiesStringArry componentsJoinedByString:@"\n\t"];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n%@",@"property defind:"];
    [dumpString appendFormat:@"\t\n\r%@\n",propertiesString];
    NSString *finalClassMethodLines=generateMethodLines(object_getClass(currentClass),NO,nil);
    NSArray *finalClassMethodLinesArry = [finalClassMethodLines componentsSeparatedByString:@"\n"];
    finalClassMethodLines = [finalClassMethodLinesArry componentsJoinedByString:@"\n\t"
                             ];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n%@",@"ClassMethod defind:"];
    [dumpString appendFormat:@"\n\t\r%@",finalClassMethodLines];



    NSString *finalMethodLines=generateMethodLines(currentClass,YES,propertiesArrayFromString(propertiesString));
    NSArray *finalMethodLinesArry = [finalMethodLines componentsSeparatedByString:@"\n"];
    finalMethodLines = [finalMethodLinesArry componentsJoinedByString:@"\n\t"];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n"];
    [dumpString appendFormat:@"\n%@",@"InstanceMethod defind:"];
    [dumpString appendFormat:@"\n\t%@",finalMethodLines];


    return dumpString;
}
@end
