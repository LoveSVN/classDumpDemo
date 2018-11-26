//
//  AppDelegate.m
//  PrivateMethodGetClassForiOS
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.



    NSString *currentClassMethodDes = [self performSelector:@selector(__methodDescriptionForClass:) withObject:[UIViewController class]];

    NSLog(@"%@",currentClassMethodDes);

    IMP Fromedec = [NSObject instanceMethodForSelector:@selector(__methodDescriptionForClass:)];

    NSString *path = [NSBundle bundleForClass:[NSObject class]];

    ///!!!:以下私有方法自己尝试看效果
//    NSString *currentClassIvarDes = [self performSelector:@selector(__ivarDescriptionForClass:) withObject:[UIViewController class]];
//
//    NSLog(@"获取当前类的class Ivar描述：%@\n\t",currentClassIvarDes);
//
//    NSString *currentClassPropertyDes = [NSObject performSelector:@selector(__propertyDescriptionForClass:) withObject:[UIViewController class]];
//
//    NSLog(@"获取当前类的class Property描述：%@\n\t",currentClassPropertyDes);
//
//
//    NSString *currentClassMethodDes = [self performSelector:@selector(__methodDescriptionForClass:) withObject:[UIViewController class]];
//
//    NSLog(@"获取当前类的class Method描述：%@\n\t",currentClassMethodDes);
//
//
//    NSString *currentClassShortMethodDes = [UIViewController performSelector:@selector(_shortMethodDescription)];
//
//    NSLog(@"获取当前类的class Short Method描述：%@\n\t",currentClassShortMethodDes);

   
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
