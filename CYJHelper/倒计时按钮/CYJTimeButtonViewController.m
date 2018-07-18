//
//  CYJTimeButtonViewController.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/18.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "CYJTimeButtonViewController.h"

@interface CYJTimeButtonViewController ()

@end

@implementation CYJTimeButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CYJTimeButton * button = [[CYJTimeButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40) allTime:60];
    [button setTitle:@"倒计时" forState:UIControlStateNormal];
    button.endTitle = @"重新获取";
    button.backgroundColor = GrayColor;
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
