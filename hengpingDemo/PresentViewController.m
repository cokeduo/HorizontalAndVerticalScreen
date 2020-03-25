//
//  PresentViewController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "PresentViewController.h"
#import "JJHeader.h"
#import "JJTools.h"
#import <Masonry/Masonry.h>

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *backBtn = [self createCommonButtonWithTitle:@"Back" frame:CGRectZero sel:@selector(dismissAction) target:self];
    [self.view addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        UIEdgeInsets edge = Safe_area;
        make.left.mas_equalTo(edge.top);
        make.top.mas_equalTo(STATUSBAR_HEIGHT);
        make.width.height.mas_equalTo(44);
    }];
}

- (void)dismissAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)prefersStatusBarHidden{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight;
}

@end
