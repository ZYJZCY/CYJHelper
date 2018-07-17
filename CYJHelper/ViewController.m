//
//  ViewController.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "CYJCheckNetworkStatusManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self checkNetworkStatus];
}
- (void)checkNetworkStatus {
    [CYJCheckNetworkStatusManager cyj_startNetWorkMonitoringWithBlock:^(CYJNetworkStatus status) {
        NSString * msg;
        switch (status) {
            case 0:
            {
                msg = @"未知网络";
                NSLog(@"%@", msg);
            }
                break;
            case 1:
            {
                msg = @"没有网络";
                NSLog(@"%@", msg);
            }
                break;
            case 2:
            {
                msg = @"您的网络类型为：手机 3G/4G 网络";
                NSLog(@"%@", msg);
            }
                break;
            case 3:
            {
                msg = @"您的网络类型为：wifi 网络";
                NSLog(@"%@", msg);
            }
                break;
                
            default:
                break;
        }
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
