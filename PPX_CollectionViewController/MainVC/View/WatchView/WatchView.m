//
//  WatchView.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "WatchView.h"
#import "UIView+Distribution.h"
#import "BaseMacro.h"

@interface WatchView ()
{
    UIImageView  *backImageView;
    UIImageView  *LookImageView;
    UILabel      *numberLabel;
}
@end

@implementation WatchView


#pragma mark - Init

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI
{
    backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 18)];
    backImageView.image = [UIImage imageNamed:@"bg_top"];
    [self addSubview:backImageView];
    
    numberLabel = [[UILabel alloc]init];
    numberLabel.text = @"1111";
    numberLabel.font = FH(10);
    numberLabel.textColor = [UIColor whiteColor];
    numberLabel.frame = CGRectMake(80-28-6, 2, 28, 14);
    [self addSubview:numberLabel];
    
    LookImageView = [[UIImageView alloc]init];
    LookImageView.image = [UIImage imageNamed:@"liulan"];
    LookImageView.frame = CGRectMake(numberLabel.left-16, 4, 14, 10);
    [self addSubview:LookImageView];

}
- (void)looknumber:(NSString *)number
   lookPictureType:(LookPictureType)lookPictureType
{
    
}


@end
