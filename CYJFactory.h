//
//  CYJFactory.h
//  HUD
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CYJFactory : NSObject
/**
 创建label 内容 frame
 */
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame;
/**
 创建label 内容 frame 文字颜色
 */
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame textColor:(UIColor *)color;
/**
 创建label 内容 frame 文字颜色 字体大小
 */
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame fontSize:(CGFloat)size;
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame textColor:(UIColor *)color fontSize:(CGFloat)size;

/**
 创建Button 标题 frame
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title frame:(CGRect)frame target:(id)target action:(SEL)selector;

/**
 创建Button 标题 frame 背景颜色
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor  target:(id)target action:(SEL)selector;

/**
 创建Button 标题 frame 背景颜色 图片
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor  backgroundImage:(UIImage *)backImage target:(id)target action:(SEL)selector;

/**
 创建Button 标题 frame 背景颜色 图片 背景图片
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor image:(UIImage *)image backgroundImage:(UIImage *)backImage target:(id)target action:(SEL)selector;
/**
 创建Button 标题 背景颜色
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title target:(id)target backgroundColor:(UIColor *)backgroundColor action:(SEL)selector;

/**
 创建UIView frame 背景颜色
 */
+ (UIView *)createViewWithFrame:(CGRect)frame backgroundColor:(UIColor *)color;

/**
 创建UITextField holder frame
 */
+ (UITextField *)createTextFieldWithPlaceHolder:(NSString *)placeholder frame:(CGRect)frame;

/**
 创建UITextField holder frame 文字 style
 */
+ (UITextField *)createTextFieldWithPlaceHolder:(NSString *)placeholder frame:(CGRect)frame text:(NSString *)text boardStyle:(UITextBorderStyle)style;
@end
