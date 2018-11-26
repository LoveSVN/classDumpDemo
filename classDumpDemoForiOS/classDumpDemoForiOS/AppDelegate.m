//
//  AppDelegate.m
//  classDumpDemoForiOS
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "AppDelegate.h"
#import <objc/runtime.h>
#import <objc/message.h>
#include <mach-o/nlist.h>
#include <mach-o/dyld_images.h>
#include <mach/mach.h>
#include <mach-o/dyld_images.h>
#include <mach/mach_vm.h>
#include <dlfcn.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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

NSString *imagePathForClassName(NSString *className){

    NSString *imagePath=NULL;
    unsigned int count=0;

    dyld_all_image_infos info=  _dyld_get_all_image_infos();
    dyld_all_image_infos info1= __dyld_get_all_image_infos();
    for(int i=0; i<dyld_all_image_infos->infoArrayCount; i++) {
        if (dyld_all_image_infos->infoArray[i].imageLoadAddress!=NULL){
            char *currentImage=(char *)dyld_all_image_infos->infoArray[i].imageFilePath;
            const char **names = objc_copyClassNamesForImage((const char *)currentImage,&count);
            for (int i=0; i<count; i++){
                const char *clsname=names[i];
                if (!strcmp([className  UTF8String],clsname)){
                    imagePath=[NSString stringWithCString:currentImage encoding:NSUTF8StringEncoding ];
                    break;
                }
            }
        }
    }
    return imagePath;
}

@end
