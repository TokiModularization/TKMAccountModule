//
//  TKModule+Account.m
//  TKMAccountModule
//
//  Created by Thief Toki on 2021/3/25.
//

#import "TKModule+Account.h"

#import "TKMAccountLoginView.h"
#import "TKMAccountInfoView.h"

#import <Masonry/Masonry.h>
#import <TKMInfoManager/TKMInfoManager.h>

@implementation TKModule (Account)

- (void)showLoginView {
    TKMAccountLoginView *loginView = [[TKMAccountLoginView alloc] init];
    [[UIApplication sharedApplication].keyWindow addSubview:loginView];
    [loginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
}

- (void)showInfoView {
    TKMAccountInfoView *infoView = [[TKMAccountInfoView alloc] init];
    [[UIApplication sharedApplication].keyWindow addSubview:infoView];
    [infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
}

@end
