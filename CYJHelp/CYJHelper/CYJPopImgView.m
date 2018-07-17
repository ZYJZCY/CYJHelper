//
//  MainView.m
//  CheTianXiaAPP
//
//  Created by Jerry on 2017/5/10.
//  Copyright © 2017年 ZJ. All rights reserved.
//

#import "CYJPopImgView.h"
#import "UIImage+AFNetworking.h"
#import "CYJHelper.h"
@implementation CYJPopImgView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self addView];
}

- (void)addView{
    self.userInteractionEnabled = YES;
    self.image = [[UIImageView alloc]initWithFrame:CGRectMake(20, 80, self.frame.size.width-40, (self.frame.size.width-40)/66*79)];
    self.image.center = self.center;
    self.image.userInteractionEnabled = YES;
    [self initTap];
    [self.image setImageWithURL:[NSURL URLWithString:_picUrl]];
    [self addSubview:_image];
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(self.frame.size.width/2-20, self.frame.size.height/2+CGRectGetHeight(_image.frame)/2+10, 50, 50);
    [_button addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
    [_button setImage:[UIImage imageNamed:@"btn"] forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _button.titleLabel.font = [UIFont systemFontOfSize:40.f];
    [self addSubview:_button];
}
//初始化点击手势
- (void)initTap{
    UIGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTarget)];
    [_image addGestureRecognizer:tap];
}
//点击事件
- (void)tapTarget{
    [self remove];
    [self.delegate showPopDetailWith:self.link andTitle:@"详情"];
}
- (void)remove{
    [UIView animateWithDuration:0.3 animations:^{
        self.frame = CGRectMake(0, -SCREEN_H, SCREEN_W, SCREEN_H);    }];
}


- (instancetype)initWithFrame:(CGRect)frame andUrl:(NSString *)url andLink:(NSString *)link
{
    self = [super initWithFrame:frame];
    if (self) {
        self.picUrl = [url copy];
        self.link = [link copy];
        self.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.5];
    }
    return self;
}


@end
