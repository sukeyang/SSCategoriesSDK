//
//  UIButton+SSAdd.h
//  12313213
//
//  Created by jiuhao-yangshuo on 16/5/24.
//  Copyright © 2016年 jiuhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SSAdd)

- (void)setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;
- (CGRect)SSEnlargedRect;
@end

static const void * cachesIDKey = &cachesIDKey;
static const void * cachesIDKey2 = &cachesIDKey2;


@interface UIButton (SSUIButtonInfo)

@property (nonatomic ,copy) NSString *buttonDefultString;

@property (nonatomic, assign) id dicInfo;

@end

