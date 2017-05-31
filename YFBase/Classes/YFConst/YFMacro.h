//
//  YFMacro.h
//  Test
//
//  Created by YangFan on 16/12/13.
//  Copyright © 2016年 YangFan. All rights reserved.
//

#ifndef YFMacro_h
#define YFMacro_h

//屏幕尺寸
#define yfWidth [UIScreen mainScreen].bounds.size.width

#define yfHeight [UIScreen mainScreen].bounds.size.height

#define yfViewHeight [UIScreen mainScreen].bounds.size.height - 64

//比例
#define RATE yfWidth / 375.00

//打印信息
#ifdef DEBUG
#define YFLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define YFLog(...)
#endif

// 通知中心
#define YFNotificationCenter [NSNotificationCenter defaultCenter]

#define YFRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

//强弱引用
#define YFWeakSelf(type)  __weak typeof(type) weak##type = type;
#define YFStrongSelf(type)  __strong typeof(type) type = weak##type;

//主屏幕
#define YFKeyWindow [UIApplication shareApplication].keyWindow

#endif /* YFMacro_h */
