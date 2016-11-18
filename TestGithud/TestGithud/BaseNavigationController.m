//
//  BaseNavigationController.m
//  TestGithud
//
//  Created by 张淋 on 16/11/18.
//  Copyright © 2016年 Guangzhou Znaer Geo-information Co.,Ltd. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (UIStatusBarStyle)preferredStatusBarStyle{
    return [self.topViewController preferredStatusBarStyle];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
    if (self.viewControllers.count <= 1) {
       viewController.hidesBottomBarWhenPushed = NO;
    }
    
}

@end
