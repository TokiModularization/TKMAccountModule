//
//  TKViewController.m
//  TKMAccountModule
//
//  Created by zhengxianda0512@gmail.com on 03/26/2021.
//  Copyright (c) 2021 zhengxianda0512@gmail.com. All rights reserved.
//

#import "TKViewController.h"

#import <TKMRequest/TKMRequest.h>
#import <TKMInitializeModule/TKMInitializeModule.h>
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
    
    [[TKModule shared] initializeWithEnvironment:0];
    
    [[TKModule shared] showLoginView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
