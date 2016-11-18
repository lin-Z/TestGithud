//
//  aaViewController.m
//  TestGithud
//
//  Created by 张淋 on 16/11/18.
//  Copyright © 2016年 Guangzhou Znaer Geo-information Co.,Ltd. All rights reserved.
//

#import "aaViewController.h"
#import "ViewController.h"
@interface aaViewController ()

@end

@implementation aaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *bnt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bnt setTitle:@"push" forState:UIControlStateNormal];
    [bnt setFrame:CGRectMake(100, 100, 100, 100)];
    bnt.backgroundColor = [UIColor redColor];
    [bnt addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bnt];
}

- (void)pushAction:(UIButton *)sender {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
