//
//  AppDelegate.h
//  TestGithud
//
//  Created by 张淋 on 16/11/17.
//  Copyright © 2016年 Guangzhou Znaer Geo-information Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

