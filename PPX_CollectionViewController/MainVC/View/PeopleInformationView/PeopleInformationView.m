//
//  PeopleInformationView.m
//  BigSport
//
//  Created by pipixia on 16/9/19.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "PeopleInformationView.h"
#import "UIView+Distribution.h"
#import "BaseMacro.h"

@interface PeopleInformationView ()
{
    UIImageView  *backImageView;
    UIImageView  *pictureImageView;
    UILabel      *nameLabel;
    UIImageView  *markImageView;
}
@end

@implementation PeopleInformationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

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
    backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 18)];
    backImageView.image = [UIImage imageNamed:@"bg_down"];
    [self addSubview:backImageView];
    
    pictureImageView = [[UIImageView alloc]init];
    pictureImageView.image = [UIImage imageNamed:@"touxiang"];
    pictureImageView.frame = CGRectMake(6, 4, 10, 10);
    [self addSubview:pictureImageView];
    
    nameLabel = [[UILabel alloc]init];
    nameLabel.text = @"Type something";
    nameLabel.font = FH(10);
    nameLabel.textColor = [UIColor whiteColor];
    nameLabel.frame = CGRectMake(pictureImageView.right + 2, 2, 50, 14);
    [self addSubview:nameLabel];

    markImageView = [[UIImageView alloc]init];
    markImageView.image = [UIImage imageNamed:@"darenbiaozhi"];
    markImageView.frame = CGRectMake(nameLabel.right + 1, 5, 10, 8);
    [self addSubview:markImageView];

}

- (void)imageURL:(NSString *)url
            type:(NSString *)type
            name:(NSString *)name
{
    
}

@end
