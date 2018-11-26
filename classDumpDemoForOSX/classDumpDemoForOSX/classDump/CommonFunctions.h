//
//  CommonFunctions.h
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
BOOL isMachOExecutable(const char *image);
BOOL is64BitMachO(const char *image);
NSMutableArray * generateForbiddenClassesArray(BOOL isRecursive);
static inline void loadBar(int x, int n, int r, int w,const char *className);
NSMutableArray * generateForbiddenPathsArray(BOOL isRecursive);
int locationOfString(const char *haystack, const char *needle);
