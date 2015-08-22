//
//  UIViewController+MBCSystem.m
//  MotelShare
//
//  Created by Dao Duy Thuy on 8/21/15.
//  Copyright (c) 2015 Moboco. All rights reserved.
//

#import "UIViewController+MBCSystem.h"
#import "MBCLoginViewController.h"

@implementation UIViewController (MBCSystem)


- (void)mbc_presentLogin
{
    MBCLoginViewController *loginVC = [[MBCLoginViewController alloc] initWithNibName:NSStringFromClass([MBCLoginViewController class]) bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

@end
