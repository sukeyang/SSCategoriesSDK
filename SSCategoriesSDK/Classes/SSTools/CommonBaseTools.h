//
//  CommonSet.h
//  PGS
//
//  Created by yangshuo on 16/6/29.
//  Copyright © 2016年 PGS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonBaseTools : NSObject

//相机可用
+ (BOOL)isAvailableCamera;

+ (BOOL)isValidateIDCardNumber:(NSString*)value;

+ (BOOL)isValidateFixPhone:(NSString*)value;

+ (BOOL)isValidateTelphone:(NSString*)value;

@end
