//
//  CYJPopImgView.h
//  HUD
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol showDetail <NSObject>

- (void)showPopDetailWith:(NSString *)link andTitle:(NSString *)title;

@end

@interface CYJPopImgView : UIView
//图片
@property (nonatomic,strong)UIImageView * image;
//按钮
@property (nonatomic,strong)UIButton * button;

@property (nonatomic,weak)id<showDetail> delegate;
//图片地址
@property (nonatomic,copy)NSString * picUrl;
//
@property (nonatomic,copy)NSString * link;

- (instancetype)initWithFrame:(CGRect)frame andUrl:(NSString *)url andLink:(NSString *)link;
@end
