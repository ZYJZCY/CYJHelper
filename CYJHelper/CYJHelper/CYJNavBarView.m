//
//  CYJNavBarView.m
//  HUD
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "CYJNavBarView.h"
#import "CYJHelper.h"
@implementation CYJNavBarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
}

- (void)addSubviews{
    self.userInteractionEnabled = YES;
    //返回按钮
    UIButton * backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(10, ContentOffSet-42, 40, 40);
    [backButton setTitleColor:BlackColor forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(leftButtonTarget) forControlEvents:UIControlEventTouchUpInside];
    backButton.titleLabel.font = [UIFont systemFontOfSize:15.f];
    self.leftButton = backButton;
    
    UIButton * locateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    locateButton.frame = CGRectMake(SCREEN_W-50, ContentOffSet-42, 40, 40);
    [locateButton addTarget:self action:@selector(rightButtonTarget) forControlEvents:UIControlEventTouchUpInside];
    [locateButton setTitleColor:BlackColor forState:UIControlStateNormal];
    locateButton.titleLabel.font  = [UIFont systemFontOfSize:15.f];
    locateButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    self.rightButton = locateButton;
    [self addSubview:self.leftButton];
    [self addSubview:self.rightButton];
}

- (void)leftButtonTarget{
    self.callLeftBlock();
}

- (void)rightButtonTarget{
    self.callRightBlock();
}

- (instancetype)initWithFrame:(CGRect)frame andLeftImage:(UIImage *)leftImage andLeftTitle:(NSString *)leftTitle andRightImage:(UIImage *)rightImage andRightTitle:(NSString *)rightTitle
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
        [self.leftButton setImage:leftImage forState:UIControlStateNormal];
        [self.leftButton setTitle:leftTitle forState:UIControlStateNormal];
        [self.rightButton setImage:rightImage forState:UIControlStateNormal];
        [self.rightButton setTitle:rightTitle forState:UIControlStateNormal];
    }
    return self;
}

@end
