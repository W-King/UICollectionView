//
//  HomeViewController.h
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
<UICollectionViewDelegate,
UICollectionViewDataSource>
{
    UICollectionView    *mainCollectionView;
}

@end
