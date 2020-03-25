//
//  FirstViewController.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "PushedViewController.h"
#import "JJHeader.h"
#import <Masonry/Masonry.h>

@interface PushedViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataSource;

@property (nonatomic, assign) UIDeviceOrientation currentOrientation;
@end

@implementation PushedViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleStatusBarOrigentationChange:) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    }
    return self;
}


#pragma mark - 自适应横屏竖屏

- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeRight;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait | UIInterfaceOrientationLandscapeRight;
}


#pragma mark - 强制横屏

//- (BOOL)shouldAutorotate{
//    return YES;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskLandscapeRight;
//}
//
//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    self.currentOrientation = [UIDevice currentDevice].orientation;
//
//    NSLog(@"by- %s",__func__);
//    [self setInterfaceOrientation:UIInterfaceOrientationLandscapeRight];
//}
//
//
//- (void)viewWillDisappear:(BOOL)animated{
//    [super viewWillDisappear:animated];
//    [self setInterfaceOrientation:(UIInterfaceOrientation)self.currentOrientation];
//}

- (void)setInterfaceOrientation:(UIInterfaceOrientation)orientation{
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        [invocation setArgument:&orientation atIndex:2];
        [invocation invoke];
    }else{
        NSLog(@"by- %s",__func__);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.dataSource = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        NSString *str = [NSString stringWithFormat:@"项目-%d", i];
        [self.dataSource addObject:str];
    }
    
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_MIN, SCREEN_MAX) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
    
}

- (void)handleStatusBarOrigentationChange:(NSNotification *)noti{
    
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    BOOL isLandscape = NO;
    switch (interfaceOrientation) {
        case UIInterfaceOrientationUnknown:
            NSLog(@"by- %@",@"方向未知");
            break;
        case UIInterfaceOrientationPortrait:
            isLandscape = NO;
            break;
        case UIInterfaceOrientationLandscapeLeft:
        case UIInterfaceOrientationLandscapeRight:
            isLandscape = YES;
            break;
        default:
            break;
    }
    
//    if (isLandscape) {
//        // 横屏
//        self.tableView.frame = CGRectMake(0, 0, SCREEN_MAX, SCREEN_MIN);
//    }else{
//        // 竖屏
//        self.tableView.frame = CGRectMake(0, 0, SCREEN_MIN, SCREEN_MAX);
//    }
//    [self.tableView reloadData];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

- (void)dealloc{
    NSLog(@"by- %s",__func__);
}


#pragma mark - 横竖屏切换 - 重布局

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    if (size.width > size.height) {
        NSLog(@"by- %@",@"横屏");
    }else{
        NSLog(@"by- %@",@"竖屏");
    }
}

- (void)viewWillLayoutSubviews{
    NSLog(@"by- %s",__func__);
    NSLog(@"by- width: %f height: %f",SCREEN_WIDTH, SCREEN_HEIGHT);
}

- (void)viewDidLayoutSubviews{
    NSLog(@"by- %s",__func__);
}


@end
