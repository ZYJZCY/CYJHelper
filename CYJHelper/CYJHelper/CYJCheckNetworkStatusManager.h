//
//  CYJCheckNetworkStatusManager.h
//  testNET
//
//  Created by 哇咔~哇嚓嚓~ on 2018/7/17.
//  Copyright © 2018年 张超岩. All rights reserved.
//

#import <Foundation/Foundation.h>

/*! 使用枚举NS_ENUM:区别可判断编译器是否支持新式枚举,支持就使用新的,否则使用旧的 */
typedef NS_ENUM(NSUInteger, CYJNetworkStatus)
{
    /*! 未知网络 */
    CYJNetworkStatusUnknown           = 0,
    /*! 没有网络 */
    CYJNetworkStatusNotReachable,
    /*! 手机 3G/4G 网络 */
    CYJNetworkStatusReachableViaWWAN,
    /*! wifi 网络 */
    CYJNetworkStatusReachableViaWiFi
};

/*! 实时监测网络状态的 block */
typedef void(^CYJNetworkStatusBlock)(CYJNetworkStatus status);

@interface CYJCheckNetworkStatusManager : NSObject

#pragma mark - 网络状态监测
/*!
 *  开启实时网络状态监测，通过Block回调实时获取(此方法可多次调用)
 */
+ (void)cyj_startNetWorkMonitoringWithBlock:(CYJNetworkStatusBlock)networkStatus;

@end
