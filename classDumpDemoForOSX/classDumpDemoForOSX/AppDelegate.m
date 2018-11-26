//
//  AppDelegate.m
//  classDumpDemoForOSX
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "AppDelegate.h"
#import "NSObject+DunmClass.h"

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


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    NSLog(@"%@",[NSWindow dunmClass:[NSWindow class]]);
    imagePathForClassName(@"AppDelegate");
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application

//    /usr/lib/system/libdyld.dylib
}

NSString *imagePathForClassName(NSString *className){

    struct dyld_all_image_infos info;
    struct dyld_all_image_infos(*all_image)();
    NSString *imagePath=NULL;
    unsigned int count=0;

//    struct dyld_all_image_infos _dyld_get_all_image_infos();

//    void *lib = dlopen("/usr/lib/libSystem.B.dylib", RTLD_LOCAL);

    return nil;
//    if (lib) {
//        all_image = dlsym(lib, "_dyld_get_all_image_infos");
//        if (!all_image) {
//
//            return nil;
//        }
//        info = all_image();
//        for(int i=0; i<info.infoArrayCount; i++) {
//            if (info.infoArray[i].imageLoadAddress!=NULL){
//            char *currentImage=(char *)info.infoArray[i].imageFilePath;
//                if (currentImage) {
//
//                    const char **names = objc_copyClassNamesForImage(currentImage,&count);
//                    for (int i=0; i<count; i++){
//                        const char *clsname=names[i];
//                        if (!strcmp([className  UTF8String],clsname)){
//                            imagePath=[NSString stringWithCString:currentImage encoding:NSUTF8StringEncoding ];
//                            break;
//                        }
//                    }
//
//                }
//
//        }
//    }
//    }


    return imagePath;
}

@end
