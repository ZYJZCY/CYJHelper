//
//  CYJPopImgViewViewController.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/18.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "CYJPopImgViewViewController.h"

@interface CYJPopImgViewViewController ()

@end

@implementation CYJPopImgViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addPopView];
    // Do any additional setup after loading the view.
}

- (void)addPopView{
    CYJPopImgView * pop = [[CYJPopImgView alloc]initWithFrame:CGRectMake(0, -SCREEN_H, SCREEN_W, SCREEN_H) ImgFrame:CGRectMake(20, 80, SCREEN_W-40, (SCREEN_W-40)/66*79)];
    pop.ImgUrl = @"http://server.yundanche.com.cn:9002/vehicle/img/noticepage/a169f2c0-72bf-4f61-853e-a27eb383e23a.png" ;
    pop.LinkUrl = @"https://mp.weixin.qq.com/s?__biz=MzIzMTc3MTIxMw==&mid=2247484301&idx=1&sn=8284fb1fbe004d7c9ded842945ea9f48&chksm=e89e5eafdfe9d7b9db3f3b670ee1944530cd72e77a0292317c210b7dac91caad3647ab33fa3f#rd";
    //防止循环引用
    __weak typeof(pop) weakPop = pop;
    pop.touchBlock = ^{
        [weakPop disMiss];
        NSLog(@"点击视图");
    };
    [pop show];
//    [self.navigationController.view addSubview:pop];
//    [UIView animateWithDuration:0.5 animations:^{
//        pop.frame = CGRectMake(0, 0, SCREEN_W, SCREEN_H);
//    }];
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
