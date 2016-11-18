//
//  ViewController.m
//  TestGithud
//
//  Created by 张淋 on 16/11/17.
//  Copyright © 2016年 Guangzhou Znaer Geo-information Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ViewController";
    
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *bnt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bnt setTitle:@"push" forState:UIControlStateNormal];
    [bnt setFrame:CGRectMake(100, 100, 100, 100)];
    bnt.backgroundColor = [UIColor redColor];
    [bnt addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bnt];
    
}

- (void)pushAction:(UIButton *)sender {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"UIViewController";
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
