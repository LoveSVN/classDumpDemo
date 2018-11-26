//
//  ViewController.m
//  PrivateMethodGetClassForiOS
//
//  Created by 张晓亮 on 2018/11/25.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


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

}


@end
