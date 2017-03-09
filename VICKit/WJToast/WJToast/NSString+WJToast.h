//
//  NSString+WJToast.h
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (WJToast)
/** 自适应字符串 */
+(CGSize)sizeForString:(NSString *)content font:(UIFont *)font maxWidth:(CGFloat)maxWidth;

@end
