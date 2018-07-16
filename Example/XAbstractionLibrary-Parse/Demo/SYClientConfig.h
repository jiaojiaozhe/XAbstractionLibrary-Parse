//
//  SYClientConfig.h
//  Foodie
//
//  Created by 兰彪 on 15/12/4.
//  Copyright © 2015年 SY. All rights reserved.
//

#import "BaseModel.h"
#import "SYPublishImageConfig.h"

@interface SYClientConfig : BaseModel

@property (nonatomic,strong) NSArray<SYPublishImageConfig> *publish_image_edge;

@end
