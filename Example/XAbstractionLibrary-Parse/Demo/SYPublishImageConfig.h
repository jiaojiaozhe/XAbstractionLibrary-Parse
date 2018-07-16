//
//  SYPublishImageConfig.h
//  Foodie
//
//  Created by 兰彪 on 15/12/4.
//  Copyright © 2015年 SY. All rights reserved.
//

#import "BaseModel.h"

@protocol SYPublishImageConfig <NSObject>
@end

@interface SYPublishImageConfig : BaseModel

@property (nonatomic,strong) NSString *background;

@property (nonatomic,strong) NSString *forground;

@property (nonatomic,strong) NSString *border_normal;

@property (nonatomic,strong) NSString *border_select;

@property (nonatomic,strong) NSString *text;

@property (nonatomic,assign) BOOL is_default;

@property (nonatomic,strong) NSDate *dateTime;

@end
