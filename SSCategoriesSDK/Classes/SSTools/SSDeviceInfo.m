//
//  SSDeviceInfo.m
//  Pods
//
//  Created by yangshuo on 16/12/1.
//
//

#import "SSDeviceInfo.h"
#import <sys/utsname.h>
#import <UIKit/UIKit.h>

@implementation SSDeviceInfo

+ (NSString *)deviceOSVersion {
    return [[UIDevice currentDevice] systemVersion];
}

//https://github.com/sukeyang/DeviceKit
+ (NSString *)deviceModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *code = [NSString stringWithCString:systemInfo.machine
                                        encoding:NSUTF8StringEncoding];
    static NSDictionary *deviceNamesByCode = nil;
    if (!deviceNamesByCode) {
        deviceNamesByCode = @{@"i386"      :@"Simulator",
                              @"x86_64"    :@"Simulator",
                              @"iPod1,1"   :@"iPod Touch",        // (Original)
                              @"iPod2,1"   :@"iPod Touch",        // (Second Generation)
                              @"iPod3,1"   :@"iPod Touch",        // (Third Generation)
                              @"iPod4,1"   :@"iPod Touch",        // (Fourth Generation)
                              @"iPod5,1"   :@"iPod Touch 5",
                              @"iPod7,1"   :@"iPod Touch 6",        // (6th Generation)
                              
                              @"iPhone1,1" :@"iPhone",            // (Original)
                              @"iPhone1,2" :@"iPhone",            // (3G)
                              @"iPhone2,1" :@"iPhone",            // (3GS)
                              @"iPhone3,1" :@"iPhone 4",          // (GSM)
                              @"iPhone3,3" :@"iPhone 4",          // (CDMA/Verizon/Sprint)
                              @"iPhone4,1" :@"iPhone 4S",         //
                              @"iPhone5,1" :@"iPhone 5",          // (model A1428, AT&T/Canada)
                              @"iPhone5,2" :@"iPhone 5",          // (model A1429, everything else)
                              @"iPhone5,3" :@"iPhone 5c",         // (model A1456, A1532 | GSM)
                              @"iPhone5,4" :@"iPhone 5c",         // (model A1507, A1516, A1526 (China), A1529 | Global)
                              @"iPhone6,1" :@"iPhone 5s",         // (model A1433, A1533 | GSM)
                              @"iPhone6,2" :@"iPhone 5s",         // (model A1457, A1518, A1528 (China), A1530 | Global)
                              @"iPhone7,1" :@"iPhone 6 Plus",     //
                              @"iPhone7,2" :@"iPhone 6",          //
                              @"iPhone8,1" :@"iPhone 6S",         //
                              @"iPhone8,2" :@"iPhone 6S Plus",    //
                              @"iPhone8,4" :@"iPhone SE",         //
                              @"iPhone9,1" :@"iPhone 7",          //
                              @"iPhone9,3" :@"iPhone 7",          //
                              @"iPhone9,2" :@"iPhone 7 Plus",     //
                              @"iPhone9,4" :@"iPhone 7 Plus",     //
                              @"iPhone10,1":@"iPhone 8",
                              @"iPhone10,2":@"iPhone 8 Plus",
                              @"iPhone10,4":@"iPhone 8",
                              @"iPhone10,5":@"iPhone 8 Plus",
                              @"iPhone10,3":@"iPhone X",
                              @"iPhone10,6":@"iPhone X",
                              
                              @"iPad1,1"   :@"iPad",              // (Original)
                              @"iPad2,1"   :@"iPad 2",            //
                              @"iPad2,2"   :@"iPad 2",            //
                              @"iPad2,3"   :@"iPad 2",            //
                              @"iPad2,4"   :@"iPad 2",            //
                              
                              @"iPad2,5"   :@"iPad Mini",         // (Original)
                              @"iPad2,6"   :@"iPad Mini",         // (Original)
                              @"iPad2,7"   :@"iPad Mini",         // (Original)
                              
                              @"iPad3,1"   :@"iPad 3",              // (3rd Generation)
                              @"iPad3,2"   :@"iPad 3",              // (3rd Generation)
                              @"iPad3,3"   :@"iPad 3",              // (3rd Generation)
                              
                              @"iPad3,4"   :@"iPad 4",              // (4th Generation)
                              @"iPad3,5"   :@"iPad 4",              // (4th Generation)
                              @"iPad3,6"   :@"iPad 4",              // (4th Generation)
                              
                              @"iPad4,1"   :@"iPad Air",          // 5th Generation iPad (iPad Air) - Wifi
                              @"iPad4,2"   :@"iPad Air",
                              @"iPad4,3"   :@"iPad Air",         // 5th Generation iPad (iPad Air) - Cellular
                              
                              @"iPad5,3"   :@"iPad Air 2",
                              @"iPad5,4"   :@"iPad Air 2",
                              
                              @"iPad6,11"   :@"iPad 5",
                              @"iPad6,12"   :@"iPad 5",
                              
                              @"iPad4,4"   :@"iPad Mini 2",         // (2nd Generation iPad Mini - Wifi)
                              @"iPad4,5"   :@"iPad Mini 2",         // (2nd Generation iPad Mini - Cellular)
                              @"iPad4,6"   :@"iPad Mini 2",         // (3rd Generation iPad Mini - Wifi (model A1599))
                              @"iPad4,7"   :@"iPad Mini 3",
                              @"iPad4,8"   :@"iPad Mini 3",
                              @"iPad4,9"   :@"iPad Mini 3",
                              
                              @"iPad5,1"  :@"iPad Mini 4",
                              @"iPad5,2"  :@"iPad Mini 4",
                              
                              @"iPad6,7"   :@"iPad Pro (12.9\")", // iPad Pro 12.9 inches - (model A1584)
                              @"iPad6,8"   :@"iPad Pro (12.9\")", // iPad Pro 12.9 inches - (model A1652)
                              @"iPad6,3"   :@"iPad Pro (9.7\")",  // iPad Pro 9.7 inches - (model A1673)
                              @"iPad6,4"   :@"iPad Pro (9.7\")" ,  // iPad Pro 9.7 inches - (models A1674 and A1675)
                              @"iPad7,1"  :@"iPad Pro 12.9 Inch 2. Generation",
                              @"iPad7,2"  :@"iPad Pro 12.9 Inch 2. Generation",
                              
                              @"iPad7,3"  :@"iPad Pro 10.5 Inch",
                              @"iPad7,4"  :@"iPad Pro 10.5 Inch",
                              
                              @"AppleTV5,3"  :@"Apple TV"
//                              @"iPad5,2"  :@"iPad Mini 4",
                              };
    }
    
    NSString* deviceName = [deviceNamesByCode objectForKey:code];
    if (!deviceName) {
        // Not found on database. At least guess main device type from string contents:
        if ([code rangeOfString:@"iPod"].location != NSNotFound) {
            deviceName = @"iPod Touch";
        } else if([code rangeOfString:@"iPad"].location != NSNotFound) {
            deviceName = @"iPad";
        } else if([code rangeOfString:@"iPhone"].location != NSNotFound){
            deviceName = @"iPhone";
        } else {
            deviceName = @"Unknown";
        }
    }
    return deviceName;
}

@end
