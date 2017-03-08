//
//  ToolHeader.h
//  My Tool
//
//  Created by 吴伟军 on 16/5/27.
//  Copyright © 2016年 吴伟军. All rights reserved.
//

#ifndef ToolHeader_h
#define ToolHeader_h

#import "NSArray+CrashCheck.h"
#import "NSDictionary+StringAttributeForKey.h"
#import "UIButton+Badge.h"
#import "UIView+Size.h"
#import "UIViewController+NavBarHidden.h"

#ifdef DEBUG
#define DLog(format, ...)  NSLog(format, ## __VA_ARGS__)
#else
#define DLog(format, ...)
#endif

/**
 *  字符串去空格；若字符串为nil，则返回空字符串
 */
#define TrimString(str) ((str && ![str isKindOfClass:[NSNull class]])?[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]:@"")

//------------------包含字符串--------------------
#define rangeOfString(v,String)                 [v rangeOfString:String].location != NSNotFound

//-------------------获取故事板指定页面--------------
#define SB_VC(storyboard,identifier) [[UIStoryboard storyboardWithName:storyboard bundle:nil] instantiateViewControllerWithIdentifier:identifier]

//------------------提示信息------------------
#define showHUD [[WWJ_SVProgressHUD sharedHUD] show]

#define dismissHUD  [[WWJ_SVProgressHUD sharedHUD] dismiss]

#define showErrorHud(info,time)  [[WWJ_SVProgressHUD sharedHUD] showErrorWithStatus:[NSString stringWithFormat:@"%@",info] afterDelay:time]

#define showSuccessHud(info,time) [[WWJ_SVProgressHUD sharedHUD] showSuccessWithStatus:[NSString stringWithFormat:@"%@",info] afterDelay:time]

#define showMessagehud(info,time)  [[WWJ_SVProgressHUD sharedHUD] showInfoWithStatus:[NSString stringWithFormat:@"%@",info] afterDelay:time]

//--------------NetWork-------------------

#define parameters(v,key) [parameters setObject:v forKey:key]

//----------------Model-------------------
#define model(key)  [dict stringAttributeForKey:key]

//----------------IconBadgeNumber-------------------
#define IconBadgeNumber(num)  [UIApplication sharedApplication].applicationIconBadgeNumber = num
/**
 *  旋转角度（具体角度）
 */
#define transfromRoation(v)      CGAffineTransformMakeRotation(v)

//-----------------View.Tag------------------
#define TagView(v)   (long)[v view].tag
//-----------------dispatch_after------------------
#define after(t,block) dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)t * NSEC_PER_SEC), dispatch_get_main_queue(),block)

//------------------获取当前点击控件的cell---------------------
#define didSelectedCurrentCell(tableView,view)  [tableView cellForRowAtIndexPath:[self.textTableView indexPathForRowAtPoint:[view convertPoint:view.bounds.origin fromCoordinateSpace:tableView]]]
//------------------获取当前点击cell的IndexPath---------------------
#define didSelectedIndexPath(tableView,view) [tableView indexPathForRowAtPoint:[view convertPoint:view.bounds.origin fromCoordinateSpace:tableView]]

//------------------tabbar去掉顶部线条----------------------
#define tabbarNoLine {[[UITabBar appearance] setShadowImage:[UIImage new]];[[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];}
/**
 *  颜色
 */
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//方正黑体简体字体定义
#define FONT(F) [UIFont fontWithName:@"FZHTJW--GB1-0" size:F]
//微软雅黑简体字体定义
#define MSYHFONT(F) [UIFont fontWithName:@"MicrosoftYaHei" size:F]
//#define MSYHBDFONT(F) [UIFont fontWithName:@"MicrosoftYaHei-Bold" size:F]

//设置View的tag属性
#define VIEWWITHTAG(_OBJECT, _TAG)    [_OBJECT viewWithTag : _TAG]
//程序的本地化,引用国际化的文件
#define MyLocal(x, ...) NSLocalizedString(x, nil)

//G－C－D
#define BACK(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define MAIN(block) dispatch_async(dispatch_get_main_queue(),block)

//获取屏幕 宽度、高度
#define SCREEN_WIDTH                                  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT                                 ([UIScreen mainScreen].bounds.size.height)
#define ViewWidth(v)                                  v.frame.size.width
#define ViewHeight(v)                                 v.frame.size.height
#define ViewX(v)                                      v.frame.origin.x
#define ViewY(v)                                      v.frame.origin.y
#define OriginX(v)                                    (v / 375) * SCREEN_WIDTH
#define OriginY(v)                                    (v / 667) * SCREEN_HEIGHT
#define SizeWidth(v)                                  (v / 375) * SCREEN_WIDTH
#define SizeHeight(v)                                 (v / 667) * SCREEN_HEIGHT

//----------------------系统----------------------------

//获取系统版本
#define IOS_VERSION                                   [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion                          [[UIDevice currentDevice] systemVersion]



//获取当前语言
#define CurrentLanguage                               ([[NSLocale preferredLanguages] objectAtIndex:0])

//当前应用的版本号
#define CurrentAppVersion                             [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

//获取应用名称
#define APP_NAME                                      [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]

//主要单例
#define UserDefaults                                [NSUserDefaults standardUserDefaults]
#define NotificationCenter                          [NSNotificationCenter defaultCenter]
#define SharedApplication                           [UIApplication sharedApplication]
#define Bundle                                      [NSBundle mainBundle]
#define MainScreen                                  [UIScreen mainScreen]

//Application delegate
#define ApplicationDelegate                         ((AppDelegate *)[[UIApplication sharedApplication] delegate])

//网络指示
#define ShowNetworkActivityIndicator()              [UIApplication sharedApplication].networkActivityIndicatorVisible = YES
#define HideNetworkActivityIndicator()              [UIApplication sharedApplication].networkActivityIndicatorVisible = NO
#endif /* ToolHeader_h */
