//
//  PeopleInformationView.h
//  BigSport
//
//  Created by pipixia on 16/9/19.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeopleInformationView : UIView

//初始化方法
- (instancetype)initWithFrame:(CGRect)frame;

- (void)imageURL:(NSString *)url
            type:(NSString *)type
            name:(NSString *)name;


@end
