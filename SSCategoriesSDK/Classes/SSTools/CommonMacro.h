//
//  CommonMacro.h
//  Pods
//
//  Created by yangshuo on 16/7/8.
//
//

#ifndef CommonMacro_h
#define CommonMacro_h

#import "CommonBaseTools.h"

//版本号对外2.1.6
#define AppBundleVersion				[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
//对内16 数字
#define AppCFBundleVersion				[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
//对内6
#define AppDisplayName                   [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]
#define AppNoticDefaultCenter                  [NSNotificationCenter defaultCenter]

#define APP_DELEGATE_KEYWINDOW [[UIApplication sharedApplication] keyWindow]
#define APP_DELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#define AlertViewShow(msg) [[[UIAlertView alloc]initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil] show];

//是否为空或是[NSNull null]
#define NotNilAndNull(_ref)  (((_ref) != nil) && (![(_ref) isEqual:[NSNull null]]))
#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))

//字符串是否为空
#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))
//数组是否为空
#define IsArrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref) count] == 0))

#define AppSystemVersion       [[[UIDevice currentDevice] systemVersion]intValue]
#define AppColor(color)                     ([UIColor colorWithHexString:color])
#define AppNotificationCenter    ([NSNotificationCenter defaultCenter])
#define AppLoadImage(imageName)  ([UIImage imageNamed:imageName])
#define AppSystemFontWithSize(size)        ([UIFont systemFontOfSize:size])
#define AppBlodFontWithSize(size)          ([UIFont boldSystemFontOfSize:size])
#define AppFileManager [NSFileManager defaultManager]
#define AppImageOfFile(Name) ([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:Name ofType:nil]])
#define AppBoldFontWithSize(size) [UIFont boldSystemFontOfSize:size]
#define AppUserDefaults [NSUserDefaults standardUserDefaults]
#define StringIsNULL(string)  [CommonBaseTools isNULLString3:string]

//block 声明
#ifdef NS_BLOCKS_AVAILABLE
typedef void (^AppBasicBlock)(id content);
typedef void (^AppOperationCallBackBlock)(BOOL isSuccess, NSString *errorMsg);
#endif

/**
 Synthsize a weak or strong reference.
 
 Example:
 @weakify(self)
 [self doSomething^{
 @strongify(self)
 if (!self) return;
 ...
 }];
 */
#ifndef weakify
#if DEBUG
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef strongify
#if DEBUG
#if __has_feature(objc_arc)
#define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif

#endif /* CommonMacro_h */
