//
//  SSUIAdapter.h
//  podTestLibrary
//
//  Created by jiuhao-yangshuo on 16/5/25.
//  Copyright © 2016年 jiuhao-yangshuo. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SSGetUniversalSizeByWidth(for320, for375, for414,for768)   [SSUIAdapter SSUniversalSizeByWidthf320:for320 f375:for375 f414:for414 f768:for768]
#define SSGetUniversalSizeByFont(for320, for375, for414,for768)   [SSUIAdapter SSUniversalSizeByFontf320:for320 f375:for375 f414:for414 f768:for768]
#define SSGetDynamicUniversalWidth(fontSize) [SSUIAdapter SSUniversalWidth:fontSize]
#define SSGetDynamicUniversalFont(with) [SSUIAdapter SSUniversalFont:with]
#define SSsystemFontOfSize(fontSize) [UIFont systemFontOfSize:fontSize]

#define SSGetUniversalSizeByHeight(for4, for5, for6, for6p,forX, forPad)   [SSUIAdapter SSUniversalSizeByHeightf4:for4 f5:for5 f6:for6 f6p:for6p fX:forX fPad:forPad]


@interface SSUIAdapter : NSObject
//宽度
+ (CGFloat)SSUniversalSizeByWidthf320:(CGFloat)for320 f375:(CGFloat)for375 f414:(CGFloat)for414 f768:(CGFloat)for768;
//高度
+(CGFloat)SSUniversalSizeByHeightf4:(CGFloat)for4 f5:(CGFloat)for5 f6:(CGFloat)for6 f6p:(CGFloat)for6p fX:(CGFloat)forX fPad:(CGFloat)forPad  ;
//字体
+(CGFloat)SSUniversalSizeByFontf320:(CGFloat)for320 f375:(CGFloat)for375 f414:(CGFloat)for414 f768:(CGFloat)for768;
//比例
+(CGFloat)SSUniversalWidth:(CGFloat)with;

+(CGFloat)SSUniversalFont:(CGFloat)fontSize;

@end
