//
//  NSObject+DunmClass.h
//  debuq
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import "ParsingFunctions.h"
#import "CommonFunctions.h"
NS_ASSUME_NONNULL_BEGIN

@interface NSObject (DunmClass)
+(NSString *)dunmClass:(Class )currentClass;
@end

NS_ASSUME_NONNULL_END
