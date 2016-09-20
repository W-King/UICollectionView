//
//  VideoCollectionViewCell.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "VideoCollectionViewCell.h"
#import "UIView+Distribution.h"
#import "BaseMacro.h"
#import "PeopleInformationView.h"
#import "WatchView.h"

@interface VideoCollectionViewCell()
{
    UIImageView           *picImageView;
    WatchView             *watchView;
    PeopleInformationView *peopleInformationView;
    UILabel               *contentLabel;
    
}
@end

@implementation VideoCollectionViewCell

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
    picImageView.frame = CGRectMake(5, 0, (SCREEN_WIDTH-24)/2, (SCREEN_WIDTH-24)/2);
    [self.contentView addSubview:picImageView];
    
    watchView = [[WatchView alloc]initWithFrame:CGRectMake(picImageView.fWidth- 80 , 0, 80, 18)];
    [picImageView addSubview:watchView];
    
    
    peopleInformationView = [[PeopleInformationView alloc]initWithFrame:CGRectMake(0, picImageView.fHeight-18, picImageView.fWidth, 18)];
    [picImageView addSubview:peopleInformationView];
    
    contentLabel = [[UILabel alloc]init];
    contentLabel.textColor = RGB_COLOR(@"#212121");
    contentLabel.font = FH(12);
    contentLabel.frame = CGRectMake(picImageView.left, picImageView.bottom, picImageView.fWidth, 30);
    contentLabel.text = @"飒飒飒飒是";
    [self.contentView addSubview:contentLabel];
    
}


@end
