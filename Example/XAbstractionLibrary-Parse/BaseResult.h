//
//  BaseResult.h
//  XAbstractionLibrary-Parse_Example
//
//  Created by lanbiao on 2018/7/13.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "XResult.h"
#import "XBaseModel.h"

@interface BaseResult : XBaseModel<XResult>
@property (nonatomic,assign) int errorCode;
@property (nonatomic,strong) NSString *serverMsg;
@end
