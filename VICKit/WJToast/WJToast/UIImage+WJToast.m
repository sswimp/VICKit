//
//  UIImage+WJToast.m
//  WJToastDemo
//
//  Created by 吴伟军 on 2017/3/9.
//  Copyright © 2017年 wuwj. All rights reserved.
//

#import "UIImage+WJToast.h"

@implementation UIImage (WJToast)

+ (UIImage *)imageWithName:(NSString *)name{
    NSBundle *pbundle = [NSBundle bundleForClass:[self class]];
    NSString *bundleURL = [pbundle pathForResource:@"WJToast" ofType:@"bundle"];
    NSBundle *imagesBundle = [NSBundle bundleWithPath:bundleURL];
    UIImage *image = [UIImage imageNamed:name inBundle:imagesBundle compatibleWithTraitCollection:nil];
    return image;
}

@end
