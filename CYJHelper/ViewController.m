//
//  ViewController.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/17.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "CYJHelper.h"
#import "BaseViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray * nameArray;
    NSArray * classArray;
}
@property (weak, nonatomic) IBOutlet UITableView *baseTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CYJHelperTest";
    [self setUpUI];
    [self initDataSource];
    [self checkNetworkStatus];
}

- (void)setUpUI{
    [self.baseTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)initDataSource{
    nameArray = @[@"自定义导航栏",@"弹出框",@"倒计时按钮"];
    classArray = @[@"CYJNavBarViewViewController",@"CYJPopImgViewViewController",@"CYJTimeButtonViewController"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = nameArray[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return nameArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     BaseViewController * viewController = nil;
    viewController = [[NSClassFromString([classArray objectAtIndex:indexPath.row]) alloc] init];
    viewController.vctitle = [nameArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:viewController animated:YES];
}

//检测网络状态
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
