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
@property (nonatomic,strong)UIImageView * ImageView;
//按钮
@property (nonatomic,strong)UIButton * removeButton;
/**点击图片block回调*/
@property (nonatomic,copy)TouchActionBlock touchBlock;
/**图片地址*/
@property (nonatomic,copy)NSString * ImgUrl;
/**背景frame*/
@property (nonatomic,assign)CGRect popFrame;;
/**图片frame*/
@property (nonatomic,assign)CGRect ImgFrame;
/**链接地址*/
@property (nonatomic,copy)NSString * LinkUrl;
/**弹出框背景frame和图片frame*/
- (instancetype)initWithFrame:(CGRect)frame ImgFrame:(CGRect)imgFrame;
/**视图消失*/
- (void)disMiss;
@end
