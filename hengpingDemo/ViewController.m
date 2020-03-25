//
//  ViewController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "ViewController.h"
#import "PushedViewController.h"
#import "PresentViewController.h"
#import "AppDelegate.h"
#import "JJTools.h"
#import <Masonry/Masonry.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Home";
    
    UIButton *pushBtn = [self createCommonButtonWithTitle:@"Push Action" frame:CGRectZero sel:@selector(pushAction) target:self];
    [self.view addSubview:pushBtn];
    
    UIButton *presnetBtn = [self createCommonButtonWithTitle:@"Present Action" frame:CGRectZero sel:@selector(presentAction) target:self];
    [self.view addSubview:presnetBtn];
    
    [pushBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(200);
        make.width.mas_equalTo(150);
        make.height.mas_equalTo(44);
        make.centerX.mas_equalTo(0);
    }];
    
    [presnetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(pushBtn.mas_bottom).offset(20);
        make.width.height.mas_equalTo(pushBtn);
        make.centerX.mas_equalTo(0);
    }];
}


- (void)pushAction{
    [self.navigationController pushViewController:[PushedViewController new] animated:YES];
}

- (void)presentAction{
    PresentViewController *presnetVC = [PresentViewController new];
    presnetVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:presnetVC animated:YES completion:nil];
}




@end
