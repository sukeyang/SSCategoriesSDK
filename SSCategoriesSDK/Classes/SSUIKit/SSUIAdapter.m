//
//  SSUIAdapter.m
//  podTestLibrary
//
//  Created by jiuhao-yangshuo on 16/5/25.
//  Copyright © 2016年 jiuhao-yangshuo. All rights reserved.
//

#import "SSUIAdapter.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation SSUIAdapter
 
+ (CGFloat)SSUniversalSizeByWidthf320:(CGFloat)for320 f375:(CGFloat)for375 f414:(CGFloat)for414 f768:(CGFloat)for768  {
    CGFloat UniversalSize = for320;
    CGFloat deviceSizeWidth = [UIScreen mainScreen].bounds.size.width;
    if (deviceSizeWidth == 320) {
        UniversalSize = for320;
    } else if (deviceSizeWidth == 375) {
        UniversalSize = for375;
    } else if (deviceSizeWidth == 414) {
        UniversalSize = for414;
    } else {
        UniversalSize = for768;
    }
    return UniversalSize;
}

+ (CGFloat)SSUniversalSizeByHeightf4:(CGFloat)for4 f5:(CGFloat)for5 f6:(CGFloat)for6 f6p:(CGFloat)for6p fX:(CGFloat)forX fPad:(CGFloat)forPad {
    CGFloat UniversalSize = for4;
    CGFloat deviceSizeHeight = [UIScreen mainScreen].bounds.size.height;
    if (deviceSizeHeight == 480) {
        UniversalSize = for4;
    } else if (deviceSizeHeight == 568) {
        UniversalSize = for5;
    } else if (deviceSizeHeight == 667) {
        UniversalSize = for6;
    } else if (deviceSizeHeight == 736) {
        UniversalSize = for6p;
    } else if (deviceSizeHeight == 812) {
        UniversalSize = forX;
    } else if (deviceSizeHeight == 1024) {
        UniversalSize = forPad;
    } else {
        UniversalSize = forPad;
    }
    return UniversalSize;
}

+ (CGFloat)SSUniversalSizeByFontf320:(CGFloat)for320 f375:(CGFloat)for375 f414:(CGFloat)for414  f768:(CGFloat)for768 {
    CGFloat UniversalSize = for320;
    CGFloat deviceSizeWidth = [UIScreen mainScreen].bounds.size.width;
    if (deviceSizeWidth == 320) {
        UniversalSize = for320;
    } else if (deviceSizeWidth == 375) {
        UniversalSize = for375;
    } else if (deviceSizeWidth == 414) {
        UniversalSize = for414;
    } else {
        UniversalSize = for768;
    }
     return UniversalSize;
}

+ (CGFloat)SSUniversalFont:(CGFloat)fontSize {
    CGFloat UniversalSize = fontSize;
    CGFloat deviceSizeWidth = [UIScreen mainScreen].bounds.size.width;
    if (deviceSizeWidth == 320) {
        UniversalSize = fontSize;
    } else if (deviceSizeWidth == 375) {
        UniversalSize = fontSize;
    } else if (deviceSizeWidth == 414) {
        UniversalSize = ceil(fontSize *414/375);
    } else {
        UniversalSize = ceil(fontSize *768/375);;
    }
    return UniversalSize;
}

+ (CGFloat)SSUniversalWidth:(CGFloat)with {
    CGFloat UniversalSize = with;
    CGFloat deviceSizeWidth = [UIScreen mainScreen].bounds.size.width;
    if (deviceSizeWidth == 320) {
        UniversalSize = with;
    } else if (deviceSizeWidth == 375) {
        UniversalSize = with;
    } else if (deviceSizeWidth == 414) {
        UniversalSize = ceil(with *414/375);
    } else {
        UniversalSize = ceil(with *768/375);;
    }
    return UniversalSize;
}
@end
