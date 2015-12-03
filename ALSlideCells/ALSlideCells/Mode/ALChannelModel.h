//
//  ALChannelModel.h
//  获取cell在tableview中的位置
//
//  Created by 王可成 on 15/12/3.
//  Copyright © 2015年 AL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALChannelModel : NSObject

@property (nonatomic ,copy) NSString *logo;
@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) NSString *intro;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)channelModelWithDict:(NSDictionary *)dict;
@end
