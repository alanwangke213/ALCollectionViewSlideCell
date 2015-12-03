//
//  ALCollectionViewCell.h
//  获取cell在tableview中的位置
//
//  Created by 王可成 on 15/12/1.
//  Copyright © 2015年 AL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALChannelModel.h"

@interface ALCollectionViewCell : UICollectionViewCell
@property (nonatomic ,weak) UIImageView *imageView;
@property (nonatomic ,strong) ALChannelModel *channelModel;

@end
