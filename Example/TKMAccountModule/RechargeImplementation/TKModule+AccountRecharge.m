//
//  TKModule+AccountRecharge.m
//  TKMRechargeModule
//
//  Created by Thief Toki on 2021/3/26.
//

#import <TKMAccountModule/TKModule+AccountRecharge.h>

#import <TKMInfoManager/TKMInfoManager.h>
#import <TKMAccountModule/TKMAccountModule.h>

@implementation TKModule (AccountRecharge)

- (void)showRechargeView {
    [TKMAccountInfoManager shared].money = 10;
    
    [[TKModule shared] showInfoView];
}

@end
