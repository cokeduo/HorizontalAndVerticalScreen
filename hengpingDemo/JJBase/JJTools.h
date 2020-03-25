//
//  JJTools.h
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JJTools : NSObject

+ (BOOL)isIphoneX;

+ (CGFloat)bottomAreaHeight;

+ (UIEdgeInsets)safe_area;

@end

NS_ASSUME_NONNULL_END
