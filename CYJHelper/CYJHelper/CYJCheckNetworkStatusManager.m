//
//  CYJCheckNetworkStatusManager.m
//  testNET
//
//  Created by 哇咔~哇嚓嚓~ on 2018/7/17.
//  Copyright © 2018年 张超岩. All rights reserved.
//

#import "CYJCheckNetworkStatusManager.h"
#import "AFNetworking.h"
#import "AFNetworkActivityIndicatorManager.h"

@implementation CYJCheckNetworkStatusManager

#pragma mark - 网络状态监测
/*!
 *  开启网络监测
 */
+ (void)cyj_startNetWorkMonitoringWithBlock:(CYJNetworkStatusBlock)networkStatus
{
    /*! 1.获得网络监控的管理者 */
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    /*! 当使用AF发送网络请求时,只要有网络操作,那么在状态栏(电池条)wifi符号旁边显示  菊花提示 */
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    /*! 2.设置网络状态改变后的处理 */
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        /*! 当网络状态改变了, 就会调用这个block */
        switch (status)
        {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络");
                networkStatus ? networkStatus(CYJNetworkStatusUnknown) : nil;
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                networkStatus ? networkStatus(CYJNetworkStatusNotReachable) : nil;
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"手机自带网络");
                networkStatus ? networkStatus(CYJNetworkStatusReachableViaWWAN) : nil;
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"wifi 网络");
                networkStatus ? networkStatus(CYJNetworkStatusReachableViaWiFi) : nil;
                break;
        }
    }];
    [manager startMonitoring];
}

@end
