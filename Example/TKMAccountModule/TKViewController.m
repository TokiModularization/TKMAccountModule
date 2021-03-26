//
//  TKViewController.m
//  TKMAccountModule
//
//  Created by zhengxianda0512@gmail.com on 03/26/2021.
//  Copyright (c) 2021 zhengxianda0512@gmail.com. All rights reserved.
//

#import "TKViewController.h"

#import <TKMRequest/TKMRequest.h>
#import <TKMAccountModule/TKMAccountModule.h>

@interface TKViewController ()

@end

@implementation TKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [[TKMEnvironmentInfoManager shared] registerWithEnvironmentType:0];
    
    [[TKMRequest shared] registerBaseURL:[TKMEnvironmentInfoManager shared].baseURL
                          baseHeaderHook:^NSDictionary * _Nonnull{
        return @{
            @"osversion": [TKMDeviceInfoManager shared].OSVersion?:@""
        };
    } baseParamHook:^NSDictionary * _Nonnull{
        return @{
            @"token": [TKMAccountInfoManager shared].token?:@""
        };
    }];
    
    [[TKModule shared] showLoginView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
