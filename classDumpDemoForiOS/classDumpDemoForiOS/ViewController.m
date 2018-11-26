//
//  ViewController.m
//  classDumpDemoForiOS
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+DunmClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"%@",[UIWindow dunmClass:[UIWindow class]]);
}


@end
