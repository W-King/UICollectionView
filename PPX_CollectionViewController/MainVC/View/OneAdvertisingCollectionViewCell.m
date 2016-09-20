//
//  OneAdvertisingCollectionViewCell.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "OneAdvertisingCollectionViewCell.h"
#import "BaseMacro.h"

@interface OneAdvertisingCollectionViewCell()
{
    UIImageView     *picImageView;
}
@end

@implementation OneAdvertisingCollectionViewCell

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
    picImageView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self.contentView addSubview:picImageView];
    
}


@end
