//
//  TopicCollectionViewCell.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "TopicCollectionViewCell.h"
#import "BaseMacro.h"
#import "UIView+Distribution.h"

@interface TopicCollectionViewCell()
{
    UIImageView      *picImageView;
    UILabel          *titleLabel;
}
@end

@implementation TopicCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame;
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initUI];
    }
    return self;
}

#pragma mark - Init UI
- (void)initUI
{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    picImageView = [[UIImageView alloc]init];
    picImageView.backgroundColor = [UIColor grayColor];
    picImageView.frame = CGRectMake(8, 0, (self.frame.size.width-16), (self.frame.size.width-16)*130/360);
    [self.contentView addSubview:picImageView];
    
    titleLabel = [[UILabel alloc]init];
    titleLabel.textColor = RGB_COLOR(@"#212121");
    titleLabel.font = FH(11);
    titleLabel.frame = CGRectMake(picImageView.left, picImageView.bottom+6, picImageView.fWidth, 16);
    titleLabel.text = @"飒飒飒飒是";
    [self.contentView addSubview:titleLabel];
}




@end
