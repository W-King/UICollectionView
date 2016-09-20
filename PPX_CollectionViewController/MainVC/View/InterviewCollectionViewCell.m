//
//  InterviewCollectionViewCell.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "InterviewCollectionViewCell.h"
#import "UIView+Distribution.h"
#import "BaseMacro.h"


@interface InterviewCollectionViewCell()
{
    UIImageView           *picImageView;
    UILabel               *titLabel;
    UILabel               *contentLabel;
    
}
@end

@implementation InterviewCollectionViewCell

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
    picImageView.backgroundColor = [UIColor redColor];
    picImageView.frame = CGRectMake(2, 0, (SCREEN_WIDTH-23)/3, (SCREEN_WIDTH-23)/3);
    [self.contentView addSubview:picImageView];
    
    titLabel = [[UILabel alloc]init];
    titLabel.textColor = RGB_COLOR(@"#212121");
    titLabel.font = FH(11);
    titLabel.frame = CGRectMake(picImageView.left, picImageView.bottom+6, picImageView.fWidth, 15);
    titLabel.text = @"飒飒飒飒是";
    [self.contentView addSubview:titLabel];
    
    contentLabel = [[UILabel alloc]init];
    contentLabel.textColor = RGB_COLOR(@"#BDBDBD");
    contentLabel.font = FH(11);
    contentLabel.frame = CGRectMake(picImageView.left, titLabel.bottom, picImageView.fWidth, 13);
    contentLabel.text = @"飒飒飒飒是";
    [self.contentView addSubview:contentLabel];
    
}



@end
