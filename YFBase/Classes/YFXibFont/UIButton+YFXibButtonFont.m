//
//  UIButton+YFXibButtonFont.m
//  YFBase
//
//  Created by YangFan on 2017/5/31.
//  Copyright © 2017年 13818556154@163.com. All rights reserved.
//

#import "UIButton+YFXibButtonFont.h"
#import <objc/runtime.h>


@implementation UIButton (YFXibButtonFont)
+ (void)load {
    //利用running time运行池的方法在程序启动的时候把两个方法替换 适用Xib建立的label
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);  //交换方法
}
    
- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成666跳过
        if(self.tag != 666) {
            CGFloat fontSize = self.titleLabel.font.pointSize;
            self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        }
    }
    return self;
}

@end
