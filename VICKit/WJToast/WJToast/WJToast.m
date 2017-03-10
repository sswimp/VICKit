//
//  WJToast.m
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#import "WJToast.h"
#import "WJBaseToastView.h"
#import "WJCentreToastView.h"

@interface WJToast()

@property (nonatomic, copy) NSString* titleString;
@property (nonatomic, copy) NSString* messageString;
@property (strong, nonatomic) UIImage* iconImage;
//是否是自定义的View
@property (assign, nonatomic) BOOL isCustomToastView;
@property(nonatomic,strong)UIView *customToastView;
@property(nonatomic,strong)WJCentreToastView *wjCentreToastView;

@property handler handler;

@end

@implementation WJToast

+ (void)showToastWithTitle:(NSString *)title message:(NSString *)message iconImage:(UIImage*)iconImage duration:(NSTimeInterval)duration toastType:(WJToastType)toastType{
    
    WJToast *toast = [[WJToast alloc]initWithTitle:title message:message iconImage:iconImage duration:duration toastType:toastType];
    [toast show];
    
}

/**
 初始化一个WJToast
 
 @param title 标题
 @param message 消息内容
 @param iconImage 图标
 @param duration 显示时长
 @param toastType toast种类
 @return WJoast
 */
-(instancetype)initWithTitle:(NSString *)title message:(NSString *)message iconImage:(UIImage*)iconImage duration:(NSTimeInterval)duration toastType:(WJToastType)toastType{
    
    self.isCustomToastView = NO;
    
    self = [self init];
    if(self){
        self.titleString = title;
        self.messageString = message;
        self.iconImage = iconImage;
        self.duration = duration;
        self.toastType = toastType;
    }
    
    return self;
}

- (instancetype)initToastWithTitle:(NSString *)title message:(NSString *)message iconImage:(UIImage*)iconImage{
    
    self.isCustomToastView = NO;
    
    self = [self init];
    if (self) {
        self.titleString = title;
        self.messageString = message;
        self.iconImage = iconImage;
    }
    
    return self;
}

- (instancetype)initCentreToastWithView:(UIView *)customToastView autoDismiss:(BOOL)autoDismiss duration:(NSTimeInterval)duration enableDismissBtn:(BOOL)enableDismissBtn dismissBtnImage:(UIImage*)dismissBtnImage{
    
    self.isCustomToastView = YES;
    
    self = [self init];
    if (self) {
        self.customToastView = customToastView;
        self.autoDismiss = autoDismiss;
        self.duration = duration;
        self.enableDismissBtn = enableDismissBtn;
        self.dismissBtnImage = dismissBtnImage;
    }
    
    
    return self;
}

/**
 根据具体属性创建响应的Toast并显示出来
 */
- (void)show{
    
    [self configBgAndTxetColor];
    
    if (_isCustomToastView == NO) {
        if (_toastPosition == WJToastPositionBottomWithFillet) {
            
            //FFCentreToastView
            _wjCentreToastView = [[WJCentreToastView alloc]initToastWithTitle:_titleString message:_messageString iconImage:_iconImage];
            
            _wjCentreToastView.toastBackgroundColor = _toastBackgroundColor;
            _wjCentreToastView.titleTextColor = _titleTextColor;
            _wjCentreToastView.messageTextColor = _messageTextColor;
            _wjCentreToastView.titleFont = _titleFont;
            _wjCentreToastView.messageFont = _messageFont;
            _wjCentreToastView.toastCornerRadius = _toastCornerRadius;
            _wjCentreToastView.toastAlpha = _toastAlpha;
            _wjCentreToastView.duration = _duration;
            _wjCentreToastView.dismissToastAnimated = _dismissToastAnimated;
            _wjCentreToastView.toastPosition = _toastPosition;
            _wjCentreToastView.toastType = _toastType;
            _wjCentreToastView.enableDismissBtn = _enableDismissBtn;
            _wjCentreToastView.autoDismiss = _autoDismiss;
            [_wjCentreToastView show];
            
            
        }else{
            //WJBaseToastView
            WJBaseToastView *wjBaseToastView = [[WJBaseToastView alloc]initToastWithTitle:_titleString message:_messageString iconImage:_iconImage];
            
            
            wjBaseToastView.toastBackgroundColor = _toastBackgroundColor;
            wjBaseToastView.titleTextColor = _titleTextColor;
            wjBaseToastView.messageTextColor = _messageTextColor;
            wjBaseToastView.titleFont = _titleFont;
            wjBaseToastView.messageFont = _messageFont;
            wjBaseToastView.toastCornerRadius = _toastCornerRadius;
            wjBaseToastView.toastAlpha = _toastAlpha;
            wjBaseToastView.duration = _duration;
            wjBaseToastView.dismissToastAnimated = _dismissToastAnimated;
            wjBaseToastView.toastPosition = _toastPosition;
            wjBaseToastView.toastType = _toastType;
            [wjBaseToastView show];
            
            
        }
        
    }else{
        //在屏幕中显示间自定义的View
        //FFCentreToastView
        _wjCentreToastView = [[WJCentreToastView alloc]initCentreToastWithView:_customToastView];
        
        _wjCentreToastView.toastCornerRadius = _toastCornerRadius;
        _wjCentreToastView.toastAlpha = _toastAlpha;
        _wjCentreToastView.duration = _duration;
        _wjCentreToastView.dismissToastAnimated = _dismissToastAnimated;
        _wjCentreToastView.enableDismissBtn = _enableDismissBtn;
        _wjCentreToastView.autoDismiss = _autoDismiss;
        [_wjCentreToastView show];
    }
}

- (void)show:(handler)handler{
    
    [self configBgAndTxetColor];
    
    if (_isCustomToastView == NO) {
        if (_toastPosition == WJToastPositionBottomWithFillet) {
            
            //WJCentreToastView
            _wjCentreToastView = [[WJCentreToastView alloc]initToastWithTitle:_titleString message:_messageString iconImage:_iconImage];
            
            _wjCentreToastView.toastBackgroundColor = _toastBackgroundColor;
            _wjCentreToastView.titleTextColor = _titleTextColor;
            _wjCentreToastView.messageTextColor = _messageTextColor;
            _wjCentreToastView.titleFont = _titleFont;
            _wjCentreToastView.messageFont = _messageFont;
            _wjCentreToastView.toastCornerRadius = _toastCornerRadius;
            _wjCentreToastView.toastAlpha = _toastAlpha;
            _wjCentreToastView.duration = _duration;
            _wjCentreToastView.dismissToastAnimated = _dismissToastAnimated;
            _wjCentreToastView.toastPosition = _toastPosition;
            _wjCentreToastView.toastType = _toastType;
            _wjCentreToastView.enableDismissBtn = _enableDismissBtn;
            _wjCentreToastView.autoDismiss = _autoDismiss;
            [_wjCentreToastView show];
            
            
        }else{
            //WJBaseToastView
            WJBaseToastView *wjBaseToastView = [[WJBaseToastView alloc]initToastWithTitle:_titleString message:_messageString iconImage:_iconImage];
            
            
            wjBaseToastView.toastBackgroundColor = _toastBackgroundColor;
            wjBaseToastView.titleTextColor = _titleTextColor;
            wjBaseToastView.messageTextColor = _messageTextColor;
            wjBaseToastView.titleFont = _titleFont;
            wjBaseToastView.messageFont = _messageFont;
            wjBaseToastView.toastCornerRadius = _toastCornerRadius;
            wjBaseToastView.toastAlpha = _toastAlpha;
            wjBaseToastView.duration = _duration;
            wjBaseToastView.dismissToastAnimated = _dismissToastAnimated;
            wjBaseToastView.toastPosition = _toastPosition;
            wjBaseToastView.toastType = _toastType;
            [wjBaseToastView show:^{
                _handler = handler;
                if (_handler) {
                    _handler();
                }
            }];
            
        }
        
    }else{
        //在屏幕中显示间自定义的View
        //WJCentreToastView
        _wjCentreToastView = [[WJCentreToastView alloc]initCentreToastWithView:_customToastView];
        
        _wjCentreToastView.toastCornerRadius = _toastCornerRadius;
        _wjCentreToastView.toastAlpha = _toastAlpha;
        _wjCentreToastView.duration = _duration;
        _wjCentreToastView.dismissToastAnimated = _dismissToastAnimated;
        _wjCentreToastView.enableDismissBtn = _enableDismissBtn;
        _wjCentreToastView.autoDismiss = _autoDismiss;
        [_wjCentreToastView show];
    }
}

-(void)dismissCentreToast{
    if (_wjCentreToastView != nil) {
        [_wjCentreToastView dismiss];
    }
}

-(void)configBgAndTxetColor{
    
    
    //默认背景色
    if (_toastBackgroundColor == nil) {
        if( _toastPosition == WJToastPositionBottomWithFillet){
            self.toastBackgroundColor = [UIColor whiteColor];
            
        }else{
            self.toastBackgroundColor = [UIColor darkGrayColor];
            
        }
    }
    //默认文字颜色
    if (_titleTextColor == nil) {
        if( _toastPosition == WJToastPositionBottomWithFillet){
            //TextColor
            self.titleTextColor = [UIColor blackColor];
        }else{
            self.titleTextColor = [UIColor whiteColor];
        }
    }
    if (_messageTextColor == nil) {
        if( _toastPosition == WJToastPositionBottomWithFillet){
            //TextColor
            self.messageTextColor = [UIColor blackColor];
        }else{
            self.messageTextColor = [UIColor whiteColor];
        }
    }
}

/**
 重写init方法，加入默认属性
 */
- (id) init
{
    if (self = [super init]){
        [self initToastConfig];
    }
    return self;
}

/**
 初始化Toast基本配置（可以在这里修改一些默认效果）
 */
-(void)initToastConfig{
    
    
    //TextFont
    self.titleFont = [UIFont systemFontOfSize:15.f weight:UIFontWeightMedium];
    self.messageFont = [UIFont systemFontOfSize:15.f];
    
    self.toastCornerRadius = 0.f;
    self.toastAlpha = 1.f;
    
    self.dismissToastAnimated = YES;
    
    //默认显示3s
    if (self.duration == 0) {
        self.duration = 3.f;
    }
    
    self.toastPosition = WJToastPositionDefaule;
    
    self.enableDismissBtn = YES;
    self.autoDismiss = YES;
    
    
}

@end
