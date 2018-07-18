//
//  CYJPopImgView.h
//  HUD
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TouchActionBlock)(void);

@interface CYJPopImgView : UIView
//图片
@property (nonatomic,strong)UIImageView * Image;
//按钮
@property (nonatomic,strong)UIButton * removeButton;

@property (nonatomic,copy)TouchActionBlock touchBlock;
//图片地址
@property (nonatomic,copy)NSString * ImgUrl;
//视图frame
@property (nonatomic,assign)CGRect popFrame;;
//图片frame
@property (nonatomic,assign)CGRect ImgFrame;
//
@property (nonatomic,copy)NSString * LinkUrl;

- (instancetype)initWithFrame:(CGRect)frame ImgFrame:(CGRect)imgFrame ImgUrl:(NSString *)url LinkUrl:(NSString *)link ;
/**s视图消失*/
- (void)disMiss;
@end
