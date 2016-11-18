//
//  MainViewController.m
//  TestGithud
//
//  Created by 张淋 on 16/11/18.
//  Copyright © 2016年 Guangzhou Znaer Geo-information Co.,Ltd. All rights reserved.
//

#import "MainViewController.h"
#import "aaViewController.h"
#import "bbViewController.h"
#import "BaseNavigationController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupViewControllers];
}

- (void)setupViewControllers{
    aaViewController *aa = [[aaViewController alloc] init];
    aa.title = @"aa";
    BaseNavigationController *nav_aa = [[BaseNavigationController alloc] initWithRootViewController:aa];
    nav_aa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"aa" image:nil selectedImage:nil];
    
    bbViewController *bb = [[bbViewController alloc] init];
    bb.title = @"bb";
    BaseNavigationController *nav_bb = [[BaseNavigationController alloc] initWithRootViewController:bb];
    nav_bb.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"bb" image:nil selectedImage:nil];
    
    self.viewControllers = @[nav_aa,nav_bb];
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
