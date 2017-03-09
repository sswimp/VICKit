//
//  WJConfig.h
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#ifndef WJConfig_h
#define WJConfig_h

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define STATUSBAR_HEIGHT [[UIApplication sharedApplication] statusBarFrame].size.height

typedef NS_ENUM(NSInteger ,WJToastType){
    //white,noImage
    WJToastTypeDefault = 1,
    //green+successImage
    WJToastTypeSuccess = 2,
    //red+erroeImage
    WJToastTypeError = 3,
    //orange+warnImage
    WJToastTypeWarning = 4,
    //blue-gray+infoImage
    WJToastTypeInfo = 5,
};

typedef NS_ENUM(NSInteger ,WJToastPosition){
    //top
    WJToastPositionDefaule = 0,
    //显示在状态栏下方
    WJToastPositionBelowStatusBarWithFillet = 1,
    //bottom
    WJToastPositionBottomWithFillet = 2,
};


#endif /* WJConfig_h */
