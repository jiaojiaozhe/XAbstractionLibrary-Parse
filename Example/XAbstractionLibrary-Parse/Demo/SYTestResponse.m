//
//  SYTestResponse.m
//  Foodie
//
//  Created by 兰彪 on 15/12/4.
//  Copyright © 2015年 SY. All rights reserved.
//

#import "SYTestResponse.h"

@implementation SYTestResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSMutableDictionary *keys = [NSMutableDictionary dictionaryWithDictionary:[super JSONKeyPathsByPropertyKey]];
    keys[@"clientConfig"] = @"client_config";
    return keys;
}

@end
