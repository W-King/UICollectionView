//
//  HomeHeadCollectionReusableView.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "HomeHeadCollectionReusableView.h"
#import "UIView+Distribution.h"
#import "BaseMacro.h"


@interface HomeHeadCollectionReusableView()
{
    UIView          *lineView;
    UIImageView     *titImageView;
    UILabel         *titLabel;
    UIButton        *moreButton;
    UIImageView     *arrowImageView;
    
}
@end

@implementation HomeHeadCollectionReusableView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initUI];
    }
    return self;
}
- (void)initUI
{
    
    titImageView = [[UIImageView alloc]init];
    titImageView.image = [UIImage imageNamed:@"jingcaishike"];
    titImageView.frame = CGRectMake(8, 13, 20, 20);
    [self addSubview:titImageView];
    
    titLabel = [[UILabel alloc]init];
    titLabel.text = @"精彩时刻";
    titLabel.font = FH(13);
    titLabel.textColor = RGB_COLOR(@"#212121");
    titLabel.frame = CGRectMake(titImageView.right + 1, 13, 100, 20);
    [self addSubview:titLabel];
    
    moreButton = [UIButton buttonWithType:UIButtonTypeCustom];
    moreButton.backgroundColor = [UIColor whiteColor];
    [moreButton setTitle:@"更多" forState:UIControlStateNormal];
    moreButton.titleLabel.font = FH(11);
    [moreButton setTitleColor:RGB_COLOR(@"#757575") forState:UIControlStateNormal];
    moreButton.frame = CGRectMake(SCREEN_WIDTH-50, 0, 50, 45);
    [moreButton addTarget:self action:@selector(moreButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:moreButton];
    
    arrowImageView = [[UIImageView alloc]init];
    arrowImageView.image = [UIImage imageNamed:@"gengduo"];
    arrowImageView.frame = CGRectMake(SCREEN_WIDTH-13, 19, 5, 8);
    [self addSubview:arrowImageView];

}
- (void)moreButtonClicked:(id)sender
{
    NSLog(@"111");
}
@end
