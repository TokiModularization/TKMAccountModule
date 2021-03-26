//
//  TKMAccountInfoView.m
//  TKMAccountModule
//
//  Created by Thief Toki on 2021/3/26.
//

#import "TKMAccountInfoView.h"

#import <Masonry/Masonry.h>
#import <TKMResourceManager/TKMResourceManager.h>
#import <TKMInfoManager/TKMInfoManager.h>
#import <TKMRechargeModule/TKMRechargeModule.h>

@interface TKMAccountInfoView ()

@property (nonatomic, strong) UILabel *tokenLabel;
@property (nonatomic, strong) UILabel *moneyLabel;

@end

@implementation TKMAccountInfoView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self bindModel];
        [self setupUI];
        [self setupUIResponse];
    }
    return self;
}

#pragma mark - bind model

- (void)bindModel {
    self.tokenLabel.text = [NSString stringWithFormat:@"Token: %@", [TKMAccountInfoManager shared].token];
    self.moneyLabel.text = [NSString stringWithFormat:@"Money: %zd", [TKMAccountInfoManager shared].money];
}

#pragma mark - setup UI

- (void)setupUI {
    [self addSubview:self.tokenLabel];
    [self addSubview:self.moneyLabel];
    
    [self.tokenLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(100);
        make.centerX.equalTo(self.mas_centerX);
    }];
    [self.moneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.tokenLabel.mas_bottom).offset(20);
        make.centerX.equalTo(self.mas_centerX);
    }];
}

#pragma mark - setup UI response

- (void)setupUIResponse {
    
}

#pragma mark - protocol

#pragma mark - setter

#pragma mark - getter

- (UILabel *)tokenLabel {
    if (!_tokenLabel) {
        _tokenLabel = [[UILabel alloc] init];
    }
    return _tokenLabel;
}

- (UILabel *)moneyLabel {
    if (!_moneyLabel) {
        _moneyLabel = [[UILabel alloc] init];
    }
    return _moneyLabel;
}

@end
