//
//  UILabel+YFXibLabelFont.m
//  YFBase
//
//  Created by YangFan on 2017/5/31.
//  Copyright © 2017年 13818556154@163.com. All rights reserved.
//

#import "UILabel+YFXibLabelFont.h"
#import <objc/runtime.h>

@implementation UILabel (YFXibLabelFont)
+ (void)load{
    //利用running time运行池的方法在程序启动的时候把两个方法替换 适用Xib建立的label
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);  //交换方法
}
    
- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成666的LabelFontSize值的跳过
        if(self.tag != 666) {
            CGFloat fontSize = self.font.pointSize;
            self.font = [UIFont systemFontOfSize:fontSize];
        }
    }
    return self;
}

@end
