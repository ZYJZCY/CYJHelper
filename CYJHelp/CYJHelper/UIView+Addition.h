//
//  UIView+Addition.h
//  HelperProject
//
//  Created by wanghailong on 15/12/30.
//  Copyright © 2015年 HailongExcellency. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

- (CGFloat)width;

- (CGFloat)height;

- (CGFloat)left;

- (CGFloat)right;

- (CGFloat)top;

- (CGFloat)bottom;

- (void)setWidth:(CGFloat)width;

- (void)setHeight:(CGFloat)height;

- (void)setSize:(CGSize)newSize;

- (void)setOrigin:(CGPoint)newOrigin;

- (void)setYOffset:(CGFloat)y;

- (void)setXOffset:(CGFloat)x;

- (UIView*)subViewOfClassName:(NSString*)className;
@end





