//
//  CYJTimeButton.h
//  CYJHelper
//
//  Created by Jerry on 2018/7/18.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYJTimeButton : UIButton
{
    /** 按钮显示时间*/
    NSInteger timeInterval;
    /**总时间*/
    NSInteger allTime;
}
@property (nonatomic,strong)NSTimer * timer;
/**倒计时结束按钮title*/
@property (nonatomic,copy)NSString * endTitle;
- (instancetype)initWithFrame:(CGRect)frame allTime:(NSInteger)time;
@end
