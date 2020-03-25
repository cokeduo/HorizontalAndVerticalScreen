//
//  JJViewController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "JJViewController.h"

@interface JJViewController ()

@end

@implementation JJViewController


- (UIButton *)createCommonButtonWithTitle:(NSString *)title frame:(CGRect)frame sel:(nonnull SEL)sel target:(nonnull id)target{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return button;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}


// 是否支持自动旋转（app支持横竖屏的情况下，旋转设备切换横竖屏）
- (BOOL)shouldAutorotate{
    return NO;
}


// 返回支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}


// 由模态推出的视图控制器 优先支持的屏幕方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}











//#pragma mark - 强制设置横屏模式
//
//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    [self orientationToPortrait:UIInterfaceOrientationLandscapeRight];
//}
//
//- (void)viewWillDisappear:(BOOL)animated{
//    [super viewWillDisappear:animated];
//    [self orientationToPortrait:UIInterfaceOrientationPortrait];
//}
//
//
//- (void)orientationToPortrait:(UIInterfaceOrientation)orientation {
//    SEL selector = NSSelectorFromString(@"setOrientation:");
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//    [invocation setSelector:selector];
//    [invocation setTarget:[UIDevice currentDevice]];
//    NSInteger val = orientation;
//    [invocation setArgument:&val atIndex:2];//前两个参数已被target和selector占用
//    [invocation invoke];
//}




@end
