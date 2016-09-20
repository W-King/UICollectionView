//
//  WatchView.h
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,LookPictureType)
{
    LookPicture_Eyes = 0,
    LookPicture_Video,
};

@interface WatchView : UIView

//@property (nonatomic) LookPictureType lookPictureType;

//初始化方法
- (instancetype)initWithFrame:(CGRect)frame;

- (void)looknumber:(NSString *)number
   lookPictureType:(LookPictureType)lookPictureType;

@end
