//
//  CYJNavBarView.h
//  HUD
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CallLeftBlock)(void);
typedef void(^CallRightBlock)(void);

@interface CYJNavBarView : UIView
/**
 左侧按钮
 */
@property (nonatomic,strong)UIButton * leftButton;
/**
 右侧按钮
 */
@property (nonatomic,strong)UIButton * rightButton;
/**
 左侧按钮回调Block
 */
@property (nonatomic,copy)CallLeftBlock callLeftBlock;
/**
 右侧按钮回调Block
 */
@property (nonatomic,copy)CallRightBlock callRightBlock;
- (instancetype)initWithFrame:(CGRect)frame andLeftImage:(UIImage *)leftImage andLeftTitle:(NSString *)leftTitle andRightImage:(UIImage *)rightImage andRightTitle:(NSString *)rightTitle;
@end
