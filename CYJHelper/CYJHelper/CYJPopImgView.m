//
//  MainView.m
//  CheTianXiaAPP
//
//  Created by Jerry on 2017/5/10.
//  Copyright © 2017年 ZJ. All rights reserved.
//

#import "CYJPopImgView.h"
#import "UIImageView+AFNetworking.h"
#import "CYJHelper.h"
@implementation CYJPopImgView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self addView];
}

- (void)addView{
    self.userInteractionEnabled = YES;
    self.Image = [[UIImageView alloc]initWithFrame:self.ImgFrame];
    self.Image.center = self.center;
    self.Image.userInteractionEnabled = YES;
    [self initTap];
    [self.Image setImageWithURL:[NSURL URLWithString:self.ImgUrl]];
    [self addSubview:self.Image];
    self.removeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.removeButton.frame = CGRectMake(self.frame.size.width/2-20, self.frame.size.height/2+CGRectGetHeight(self.Image.frame)/2+10, 50, 50);
    [self.removeButton addTarget:self action:@selector(disMiss) forControlEvents:UIControlEventTouchUpInside];
    [self.removeButton setImage:[UIImage imageNamed:@"btn"] forState:UIControlStateNormal];
    [self addSubview:self.removeButton];
}
//初始化点击手势
- (void)initTap{
    UIGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTarget)];
    [self.Image addGestureRecognizer:tap];
}
//点击事件
- (void)tapTarget{
    self.touchBlock();
}
- (void)disMiss{
    [UIView animateWithDuration:0.3 animations:^{
        self.frame = CGRectMake(0, -SCREEN_H, SCREEN_W, SCREEN_H);
    }];
}

- (instancetype)initWithFrame:(CGRect)frame ImgFrame:(CGRect)imgFrame ImgUrl:(NSString *)url LinkUrl:(NSString *)link{
    self = [super initWithFrame:frame];
    if (self) {
        self.ImgUrl = [url copy];
        self.LinkUrl = [link copy];
        self.ImgFrame = imgFrame;
        self.popFrame = frame;
        self.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.5];
    }
    return self;
}


@end
