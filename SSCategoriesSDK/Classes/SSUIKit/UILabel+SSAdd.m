//
//  UILabel+SSAdd.m
//  Pods
//
//  Created by yangshuo on 16/12/1.
//
//

#import "UILabel+SSAdd.h"
#import "UIColor+SSAdd.h"
#import <objc/runtime.h>
#import "NSString+SSAdd.h"

@implementation UILabel (SSAdd)

- (NSInteger)textMaxLine {
    NSNumber *number = objc_getAssociatedObject(self, _cmd);
    if (number) {
        return number.integerValue;
    }
    return 0;
}

- (void)setTextMaxLine:(NSInteger)textMaxLine {
    SEL key = @selector(textMaxLine);
    self.numberOfLines = textMaxLine;
    objc_setAssociatedObject(self, key, @(textMaxLine), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)labelHeightMultiLineText:(NSString *)lineText {
    CGFloat  height = [self.text heightForFont:self.font width:self.frame.size.width];
    height = MIN(ceilf(height), self.textMaxLine*(self.font.lineHeight + 0.1));
    return ceil(height);
}

+ (UILabel *)createLabel:(CGRect)rect TextColor:(NSString *)color Font:(UIFont *)font textAlignment:(NSTextAlignment)alignment labTitle:(NSString*)title {
    UILabel *lab = [[UILabel alloc] initWithFrame:rect];
    lab.textColor = [UIColor colorWithHexString:color];
    lab.font = font;
    lab.textAlignment = alignment;
    if (title) {
        lab.text = title;
    }
    return lab;
}

+ (UILabel *)createLineLabelInViewHeight:(float)lineHeight {
    UILabel *labelLine = [[UILabel alloc] initWithFrame:CGRectMake(0, lineHeight - 0.5, ([[UIScreen mainScreen] bounds].size.width), 0.5)];
    return labelLine;
}

+ (UILabel *)createLabel {
    UILabel *lab = [[UILabel alloc] init];
    lab.backgroundColor = [UIColor clearColor];
    lab.textAlignment = NSTextAlignmentLeft;
    lab.text = @"";
    return lab;
}

@end
