//
//  MSLoginViewController.m
//  MotelShare
//
//  Created by Dao Duy Thuy on 8/21/15.
//  Copyright (c) 2015 Moboco. All rights reserved.
//

#import "MBCLoginViewController.h"
#import "MBCForGotVC.h"
#import "MBCRegisterVC.h"

@interface MBCLoginViewController ()

@end

@implementation MBCLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self td_hideNavigationBar:YES];
    [self td_hideBackbutton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - IBAction

- (IBAction)closePress:(id)sender
{
    [self mbc_dismisslogin];
}

- (IBAction)loginPress:(id)sender
{
    [self mbc_controlLogin];
}

- (IBAction)forGotPress:(id)sender
{
    [self mbc_gotoForGotVC];
}

- (IBAction)registerPress:(id)sender
{
    [self mbc_gotoRegisterVC];
}

#pragma mark - Action

- (BOOL)mbc_validateBeforeLogin
{
    //password must > 6 length
    //email validate
    return YES;
}

- (void)mbc_controlLogin
{
    if ([self mbc_validateBeforeLogin]) {
        [self mbc_callAPILogin];
        return;
    }
    
    //notify to vaildate fail
}

- (void)mbc_callAPILogin
{
    
    //if success
    if(1 == 1)
    {
        [self mbc_loginSuccess];
    }
//    else
//    {
//        [self mbc_loginFail];
//    }
}

- (void)mbc_loginSuccess
{
    //store token user, token facebook
    //doing
    
    //dismiss login
    [self mbc_dismisslogin];
}

- (void)mbc_loginFail
{
}


#pragma mark - navigation
- (void)mbc_dismisslogin
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)mbc_gotoForGotVC
{
    MBCForGotVC *forgotVC = [[MBCForGotVC alloc] initWithNibName:NSStringFromClass([MBCForGotVC class]) bundle:nil];
    [self td_pushViewControllerWithObject:forgotVC];
}

- (void)mbc_gotoRegisterVC
{
    MBCRegisterVC *registerVC = [[MBCRegisterVC alloc] initWithNibName:NSStringFromClass([MBCRegisterVC class]) bundle:nil];
    [self td_pushViewControllerWithObject:registerVC];
}

@end
