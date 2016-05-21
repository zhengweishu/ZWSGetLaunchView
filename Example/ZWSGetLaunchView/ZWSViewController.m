//
//  ZWSViewController.m
//  ZWSGetLaunchView
//
//  Created by zhengweishu on 05/21/2016.
//  Copyright (c) 2016 zhengweishu. All rights reserved.
//

#import "ZWSViewController.h"
#import "ZWSGetLaunchView.h"

@interface ZWSViewController ()

@end

@implementation ZWSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self printUILaunchImageName];

    // 方法1：如果要适配iOS7，可以删除LaunchScreen.storyboard
//    [self.view addSubview:[ZWSGetLaunchView getFromLaunchImages]];
    
    // 方法2：如果适配iOS8及以上，可以不用配置LaunchImages
    [self.view addSubview:[ZWSGetLaunchView getFromLaunchScreen]];
}

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
}

- (void)printUILaunchImageName
{
    NSInteger osVersion = floor([[[UIDevice currentDevice] systemVersion] floatValue])*100;
    NSString *key;
    if (osVersion >= 700) {
        key = @"UILaunchImages";
    } else {
        key = @"UILaunchImageFile";
    }
    NSArray *array = [[[NSBundle mainBundle] infoDictionary] valueForKey:key];
    NSLog(@"%@",array);
}





@end
