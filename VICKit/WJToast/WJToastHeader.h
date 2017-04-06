//
//  WJToastHeader.h
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#ifndef WJToastHeader_h
#define WJToastHeader_h
#import "WJToast.h"
//仿qq通知
#define Toast_Default(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.duration = 1.f;[toast show];}
#define Toast_Success(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeSuccess;toast.duration = 1.f;[toast show];}
#define Toast_Error(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeError;toast.duration = 1.f;[toast show];}
#define Toast_Warning(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeWarning;toast.duration = 1.f;[toast show];}
#define Toast_Info(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeInfo;toast.duration = 1.f;[toast show];}
//在导航栏下面
#define Toast_Default_BelowStatusBar(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastPosition = WJToastPositionBelowStatusBarWithFillet;[toast show];}
#define Toast_Success_BelowStatusBar(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeSuccess;toast.toastPosition = WJToastPositionBelowStatusBarWithFillet;[toast show];}
#define Toast_Error_BelowStatusBar(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeError;toast.toastPosition = WJToastPositionBelowStatusBarWithFillet;[toast show];}
#define Toast_Warning_BelowStatusBar(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeWarning;toast.toastPosition = WJToastPositionBelowStatusBarWithFillet;[toast show];}
#define Toast_Info_BelowStatusBar(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeInfo;toast.toastPosition = WJToastPositionBelowStatusBarWithFillet;[toast show];}
//屏幕中间
#define Toast_Default_Bottom(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastPosition = WJToastPositionBottomWithFillet;toast.enableDismissBtn = NO;toast.duration = 1.f;[toast show];}
#define Toast_Success_Bottom(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeSuccess;toast.toastPosition = WJToastPositionBottomWithFillet;toast.enableDismissBtn = NO;toast.duration = 1.f;[toast show];}
#define Toast_Error_Bottom(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeError;toast.toastPosition = WJToastPositionBottomWithFillet;toast.enableDismissBtn = NO;toast.duration = 1.f;[toast show];}
#define Toast_Warning_Bottom(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeWarning;toast.toastPosition = WJToastPositionBottomWithFillet;toast.enableDismissBtn = NO;toast.duration = 1.f;[toast show];}
#define Toast_Info_Bottom(title,mesg) {WJToast *toast = [[WJToast alloc]initToastWithTitle:title message:mesg iconImage:nil];toast.toastType = WJToastTypeInfo;toast.toastPosition = WJToastPositionBottomWithFillet;toast.enableDismissBtn = NO;toast.duration = 3.f;[toast show];}
#endif /* WJToastHeader_h */
