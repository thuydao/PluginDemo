//
//  ViewController.m
//  MotelShare
//
//  Created by Dao Duy Thuy on 8/21/15.
//  Copyright (c) 2015 Moboco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self td_delay:2.0 completed:^{
        TD_MAIN_THREAD(
                       [self mbc_presentLogin];
        );
    }];
}



@end
