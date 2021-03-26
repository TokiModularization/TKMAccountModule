//
//  TKMAccountLoginView.m
//  TKMAccountModule
//
//  Created by Thief Toki on 2021/3/26.
//

#import "TKMAccountLoginView.h"

#import "TKModule+AccountRecharge.h"

#import <Masonry/Masonry.h>
#import <TKMResourceManager/TKMResourceManager.h>
#import <TKMInfoManager/TKMInfoManager.h>

@interface TKMAccountLoginView ()

@property (nonatomic, strong) UIImageView *logoImageView;
@property (nonatomic, strong) UITextField *userIdTextField;
@property (nonatomic, strong) UIButton *loginButton;

@end

@implementation TKMAccountLoginView

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
    
}

#pragma mark - setup UI

- (void)setupUI {
    [self addSubview:self.logoImageView];
    [self addSubview:self.userIdTextField];
    [self addSubview:self.loginButton];
    
    [self.logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(20);
        make.top.equalTo(self.mas_top).offset(100);
        make.width.height.mas_equalTo(40);
    }];
    [self.userIdTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.logoImageView.mas_right).offset(10);
        make.right.equalTo(self.mas_right).offset(-20);
        make.centerY.equalTo(self.logoImageView.mas_centerY);
        make.height.mas_equalTo(40);
    }];
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.logoImageView.mas_left);
        make.right.equalTo(self.userIdTextField.mas_right);
        make.top.equalTo(self.logoImageView.mas_bottom).offset(20);
        make.height.mas_equalTo(40);
    }];
}

#pragma mark - setup UI response

- (void)setupUIResponse {
    [self.loginButton addTarget:self
                         action:@selector(loginButtonTapped)
               forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginButtonTapped {
    [[TKMAccountInfoManager shared] loginWithUserId:self.userIdTextField.text
                                           callback:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
        if (error) {
            NSLog(@"Login Failed");
        } else {
            NSLog(@"Login Successd");
            
            [self removeFromSuperview];
            [[TKModule shared] showRechargeView];
        }
    }];
}

#pragma mark - protocol

#pragma mark - setter

#pragma mark - getter

- (UIImageView *)logoImageView {
    if (!_logoImageView) {
        _logoImageView = [[UIImageView alloc] init];
        _logoImageView.image = [TKMResourceManager imageNamed:@"logo"];
    }
    return _logoImageView;
}

- (UITextField *)userIdTextField {
    if (!_userIdTextField) {
        _userIdTextField = [[UITextField alloc] init];
        _userIdTextField.placeholder = @"输入UserId";
    }
    return _userIdTextField;
}

- (UIButton *)loginButton {
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_loginButton setBackgroundColor:UIColor.systemBlueColor];
    }
    return _loginButton;
}

@end
