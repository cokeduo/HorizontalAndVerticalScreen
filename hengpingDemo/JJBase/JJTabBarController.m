//
//  JJTabBarController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "JJTabBarController.h"


#define SCREEN_HEIGHT = [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH = [[UIScreen mainScreen] bounds].size.width
#define SCREEN_MIN = MIN(SCREEN_WIDTH, SCREEN_HEIGHT)
#define SCREEN_MAX = MIN(SCREEN_WIDTH, SCREEN_HEIGHT)


@interface JJTabBarController ()

@end

@implementation JJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(BOOL)shouldAutorotate{
    return self.selectedViewController.shouldAutorotate;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return [self.selectedViewController supportedInterfaceOrientations];
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
