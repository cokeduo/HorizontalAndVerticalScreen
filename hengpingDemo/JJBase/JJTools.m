//
//  JJTools.m
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#import "JJTools.h"

@implementation JJTools

+ (BOOL)isIphoneX{
    BOOL isIphoneX = NO;
    if (@available(iOS 11.0, *)) {
        if ([self _keyWindow].safeAreaInsets.bottom > 0) {
            isIphoneX = YES;
        }
    }
    return isIphoneX;
}


+ (CGFloat)bottomAreaHeight{
    if (@available(iOS 11.0, *)) {
        return [self _keyWindow].safeAreaInsets.bottom;
    } else {
        return 0;
    }
}

+ (UIEdgeInsets)safe_area{
    if (@available(iOS 11.0, *)) {
        return [self _keyWindow].safeAreaInsets;
    } else {
        return UIEdgeInsetsZero;
    }
}

+ (UIWindow *)_keyWindow{
    UIWindow *window = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *windowScene in [UIApplication sharedApplication].connectedScenes) {
            if (windowScene.activationState == UISceneActivationStateForegroundActive) {
                window = windowScene.windows.firstObject;
                break;
            }
        }
    } else {
        window = [[UIApplication sharedApplication].delegate window];
    }
    return window;
}

@end
