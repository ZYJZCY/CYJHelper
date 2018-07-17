//
//  NSString+Extension.h
//
//
//  Created by Jerry on 16/7/11.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
/**iPhone X tabbar下面的白条*/
+ (float)underTabBarHeight;
/**tabbar高度*/
+ (float)tabBarHeight;
/**滚动视图偏移*/
+ (float)ContentOffSetHeight;
/**设备型号*/
+ (NSString *)platform;
/**状态栏高度*/
+ (float)statusBarHeight;
/**判断是不是手机号*/
- (BOOL)isPhoneNumber;
/**判断是不是IP地址*/
- (BOOL)isIPAddress;
/**判断是不是登录密码(6到16位)*/
- (BOOL)isPassWord;
/**时间戳转时间*/
+(NSString *)timestampSwitchTime:(NSInteger)timestamp andFormatter:(NSString *)format;
/**时间转时间戳*/
+(NSInteger)timeSwitchTimestamp:(NSString *)formatTime andFormatter:(NSString *)format;
@end
