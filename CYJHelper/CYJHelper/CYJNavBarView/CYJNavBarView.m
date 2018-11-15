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
    UIButton * left = [UIButton buttonWithType:UIButtonTypeCustom];
    left.frame = CGRectMake(10, NavBarHeight-42, 40, 40);
    [left addTarget:self action:@selector(leftButtonTarget) forControlEvents:UIControlEventTouchUpInside];
    self.leftButton = left;
    
    UIButton * right = [UIButton buttonWithType:UIButtonTypeCustom];
    right.frame = CGRectMake(SCREEN_W-50, NavBarHeight-42, 40, 40);
    [right addTarget:self action:@selector(rightButtonTarget) forControlEvents:UIControlEventTouchUpInside];
    self.rightButton = right;
    [self addSubview:self.leftButton];
    [self addSubview:self.rightButton];
}

- (void)leftButtonTarget{
    self.callLeftBlock();
}

- (void)rightButtonTarget{
    self.callRightBlock();
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
    }
    return self;
}

@end
