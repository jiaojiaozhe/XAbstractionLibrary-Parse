//
//  SYTestResponse.h
//  Foodie
//
//  Created by 兰彪 on 15/12/4.
//  Copyright © 2015年 SY. All rights reserved.
//

#import "BaseResult.h"
#import "SYClientConfig.h"

/**
 *  测试数据结果
 */
@interface SYTestResponse : BaseResult

@property (nonatomic,strong) SYClientConfig *clientConfig;

@end
