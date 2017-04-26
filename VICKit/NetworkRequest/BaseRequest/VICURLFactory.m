//
//  VICURLFactory.m
//  CommonAPI
//
//  Created by qianyb on 15/4/10.
//  Copyright (c) 2015年 qianyb. All rights reserved.
//

#import "VICURLFactory.h"

@implementation VICURLFactory

//内网测试
+ (NSURL *)relativeBaseURL{
    //return [NSURL URLWithString:@"http://ecolabweb.chinacloudapp.cn:8080/ecolab_pe_api_formal_new/api.jsp"];   //测试环境
    return [NSURL URLWithString:@"http://192.168.41.167/yangg/szfy/Su1.dat"];         //正式环境
}

+ (NSURL *)uploadRelativeBaseURL{
    return [NSURL URLWithString:@""];
}
@end
