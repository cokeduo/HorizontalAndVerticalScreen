//
//  JJNavigationViewController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "JJNavigationViewController.h"

@interface JJNavigationViewController ()

@end

@implementation JJNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (BOOL)shouldAutorotate{
    return [[self.viewControllers lastObject] shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}


@end
