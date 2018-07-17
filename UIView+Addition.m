//
//  UIView+Addition.m
//  HelperProject
//
//  Created by wanghailong on 15/12/30.
//  Copyright © 2015年 HailongExcellency. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame =frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame =frame;
}

- (void)setSize:(CGSize)newSize{
    CGRect frame = self.frame;
    frame.size = newSize;
    self.frame = frame;
}

- (void)setOrigin:(CGPoint)newOrigin{
    CGRect frame = self.frame;
    frame.origin = newOrigin;
    self.frame = frame;
}

- (void)setYOffset:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
- (void)setXOffset:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (UIView*)subViewOfClassName:(NSString*)className {
    for (UIView* subView in self.subviews) {
        if ([NSStringFromClass(subView.class) isEqualToString:className]) {
            return subView;
        }
        
        UIView* resultFound = [subView subViewOfClassName:className];
        if (resultFound) {
            return resultFound;
        }
    }
    return nil;
}

@end





