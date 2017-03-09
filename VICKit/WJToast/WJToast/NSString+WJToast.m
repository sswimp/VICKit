//
//  NSString+WJToast.m
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#import "NSString+WJToast.h"

@implementation NSString (WJToast)

+ (CGSize)sizeForString:(NSString *)content font:(UIFont *)font maxWidth:(CGFloat)maxWidth{
    if ((!content || content == 0)) {
        return CGSizeMake(0, 0);
    }
    //设置段落格式
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentLeft;
    
    CGSize contentSize = [content boundingRectWithSize:(CGSizeMake(maxWidth, CGFLOAT_MAX)) options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSParagraphStyleAttributeName : paragraphStyle,NSFontAttributeName : font} context:nil].size;
    return contentSize;
}

@end
