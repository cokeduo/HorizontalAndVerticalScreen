//
//  JJHeader.h
//  hengpingDemo
//
//  Created by 王铎 on 2020/3/25.
//  Copyright © 2020 王铎. All rights reserved.
//

#ifndef JJHeader_h
#define JJHeader_h

#define SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width
#define SCREEN_MIN  MIN(SCREEN_WIDTH, SCREEN_HEIGHT)
#define SCREEN_MAX  MAX(SCREEN_WIDTH, SCREEN_HEIGHT)


/// 状态栏高度
#define STATUSBAR_HEIGHT [UIApplication sharedApplication].statusBarFrame.size.height

/// 导航栏高度
#define NAVIGATIONBAR_HEIGHT (STATUSBAR_HEIGHT + 44)

/// tabbar 高度
#define TABBAR_HEIGHT ([JJTools bottomAreaHeight] + 49)

/// 安全区底部高度
#define BottomHeight [JJTools bottomAreaHeight]

/// 是否是iPhoneX系列
#define IS_iPhoneX [JJTools isIphoneX]

#define Safe_area  [JJTools safe_area]


#endif /* JJHeader_h */
