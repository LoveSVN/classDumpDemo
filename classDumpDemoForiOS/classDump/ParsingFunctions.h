//
//  ParsingFunctions.h
//  debuq
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//
#import <Foundation/Foundation.h>
#define RESET   "\033[0m"
#define BOLDWHITE   "\033[1m\033[37m"
#define CLEARSCREEN "\e[1;1H\e[2J"

#include <stdio.h>
#include <dlfcn.h>
#include <dirent.h>
#include <limits.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/sysctl.h>
#include <mach-o/dyld.h>
#include <objc/runtime.h>
#include <mach-o/nlist.h>
#include <mach-o/dyld_images.h>

static BOOL addHeadersFolder=NO;
static BOOL shouldImportStructs=0;
static NSMutableArray *allStructsFound=nil;
static NSMutableArray *classesInStructs=nil;
static NSMutableArray *classesInClass=nil;
static NSMutableArray *processedImages=nil;
static NSString *classID=nil;
static NSString *onlyOneClass=nil;



NSString * propertyLineGenerator(NSString *attributes,NSString *name);
NSMutableArray * propertiesArrayFromString(NSString *propertiesString);
NSString * buildProtocolFile(Protocol *currentProtocol);
static BOOL hasMalformedID(NSString *parts);
static NSString *representedStructFromStruct(NSString *inStruct,NSString *inName, BOOL inIvarList,BOOL isFinal);
NSString *representedUnionFromUnion(NSString *inUnion);
NSString * commonTypes(NSString *atype,NSString **inName,BOOL inIvarList);
NSString * generateMethodLines(Class someclass,BOOL isInstanceMethod,NSMutableArray *propertiesArray);
