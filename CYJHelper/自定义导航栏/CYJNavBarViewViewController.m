//
//  CYJNavBarViewViewController.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/18.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "CYJNavBarViewViewController.h"

@interface CYJNavBarViewViewController ()

@end

@implementation CYJNavBarViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CYJNavBarView * view = [[CYJNavBarView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_W, NavBarHeight)];
    view.backgroundColor = GrayColor;
    [view.leftButton setTitleColor:BlackColor forState:UIControlStateNormal];
    [view.rightButton setTitleColor:BlackColor forState:UIControlStateNormal];
    [view.leftButton setTitle:@"左侧" forState:UIControlStateNormal];
    __weak typeof(self) weakself = self;
    view.callLeftBlock = ^{
        [weakself popViewController];
    };
    view.callRightBlock = ^{
        
    };
    [view.rightButton setTitle:@"右侧" forState:UIControlStateNormal];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
}
- (void)popViewController{
    [self.navigationController popViewControllerAnimated:YES];
    self.navigationController.navigationBar.hidden = NO;
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
