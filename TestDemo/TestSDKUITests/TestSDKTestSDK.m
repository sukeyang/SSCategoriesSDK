//
//  TestSDK TestSDK.m
//  TestSDKUITests
//
//  Created by yangshuo on 2017/9/22.
//  Copyright © 2017年 yangshuo. All rights reserved.
//

#import <XCTest/XCTest.h>
//@class SSUIAdapter;
#import "SSUIAdapter.h"

//@class  SSCategories

@interface TestSDK_TestSDK : XCTestCase

@end

@implementation TestSDK_TestSDK

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBasicCache {
//    SSUIAdapter SSUniversalSizeByWidthf320:<#(CGFloat)#> f375:<#(CGFloat)#> f414:<#(CGFloat)#> f768:<#(CGFloat)#>
    CGFloat wigth = SSGetUniversalSizeByWidth(320,375,414,768);
    
    CGFloat font = SSGetUniversalSizeByFont(320,375,414,768);
     CGFloat UniversalWidth = SSGetDynamicUniversalWidth(320);
     CGFloat UniversalFont = SSGetDynamicUniversalFont(320);
     CGFloat Height = SSGetUniversalSizeByHeight(320,375,414,414,812,768);
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
