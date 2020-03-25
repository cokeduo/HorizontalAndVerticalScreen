//
//  JJViewController.h
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 基类控制器
@interface JJViewController : UIViewController

- (UIButton *)createCommonButtonWithTitle:(NSString *)title frame:(CGRect)frame sel:(SEL)sel target:(id)target;

@end

NS_ASSUME_NONNULL_END
