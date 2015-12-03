//
//  ALCollectionViewCell.m
//  获取cell在tableview中的位置
//
//  Created by 王可成 on 15/12/1.
//  Copyright © 2015年 AL. All rights reserved.
//

#import "ALCollectionViewCell.h"
#define kOutOfRange 120
#define kCellHeight 200
#define kScreenWidth [UIScreen mainScreen].bounds.size.width


@interface ALCollectionViewCell()

@property (nonatomic ,weak) UILabel *titleLabel;
@property (nonatomic ,weak) UILabel *introLabel;
@end

@implementation ALCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIImageView *imageView = [[UIImageView alloc] init];
		
        self.imageView = imageView;
        [self addSubview:imageView];
		
		//titleLabel
		UILabel *titleLabel = [[UILabel alloc] init];
		titleLabel.textAlignment = NSTextAlignmentCenter;
		titleLabel.font = [UIFont boldSystemFontOfSize:22];
		titleLabel.textColor = [UIColor whiteColor];
		self.titleLabel = titleLabel;
		[self addSubview:titleLabel];
		
		//introLabel
		UILabel *introLabel = [[UILabel alloc] init];
		introLabel.textAlignment = NSTextAlignmentCenter;
		introLabel.font = [UIFont systemFontOfSize:17];
		introLabel.textColor = [UIColor whiteColor];
		self.introLabel = introLabel;
		[self addSubview:introLabel];

		
		self.clipsToBounds = YES;
    }
	
    return self;
}

-(void)layoutSubviews{
	_titleLabel.frame = CGRectMake(0, 0, kScreenWidth, 22);
	_titleLabel.center = CGPointMake(kScreenWidth * 0.5, kCellHeight * 0.5);
	_introLabel.frame = CGRectMake(0, 0, kScreenWidth, 17);
	_introLabel.center = CGPointMake(kScreenWidth * 0.5, kCellHeight * 0.5 + 0.65*(22 + 17));
}

-(void)setChannelModel:(ALChannelModel *)channelModel{
	_channelModel = channelModel;
	NSString *imagePath = [[NSBundle mainBundle] pathForResource:channelModel.logo ofType:@"jpg"];
	self.imageView.image = [[UIImage alloc] initWithContentsOfFile:imagePath];
	self.titleLabel.text = _channelModel.title;
	self.introLabel.text = _channelModel.intro;
}
@end
