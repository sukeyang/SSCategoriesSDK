//
//  ViewController.m
//  TestSDK
//
//  Created by yangshuo on 2017/9/22.
//  Copyright © 2017年 yangshuo. All rights reserved.
//

#import "ViewController.h"
#import "SSCategories.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat wigth = SSGetUniversalSizeByWidth(320,375,414,768);
    
    CGFloat font = SSGetUniversalSizeByFont(320,375,414,768);
    CGFloat UniversalWidth = SSGetDynamicUniversalWidth(320);
    CGFloat UniversalFont = SSGetDynamicUniversalFont(320);
    CGFloat Height = SSGetUniversalSizeByHeight(320,375,414,414,812,768);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
