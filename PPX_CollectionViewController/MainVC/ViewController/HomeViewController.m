//
//  HomeViewController.m
//  PPX_CollectionViewController
//
//  Created by pipixia on 16/9/20.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "HomeViewController.h"

//VC相关
#import "HomeHeadCollectionReusableView.h"
#import "AdvertisingCollectionViewCell.h"
#import "MenuCollectionViewCell.h"
#import "MomentCollectionViewCell.h"
#import "InterviewCollectionViewCell.h"
#import "VideoCollectionViewCell.h"
#import "OneAdvertisingCollectionViewCell.h"
#import "TopicCollectionViewCell.h"
#import "PeopleInformationView.h"

static NSString *headCollectionReusableView = @"HomeHeadCollectionReusableView";

@interface HomeViewController ()
{
    //一栏广告高度
    NSInteger oneADHeight;
    //轮播高度
    NSInteger carouselHeight;
    //热门护体
    NSInteger topocHeight;
    //数据来了变化
    NSInteger menuHeight;
    
}
@end

@implementation HomeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self initData];
    [self initUI];
}

#pragma mark - Init Data -

- (void)initData
{
    oneADHeight =  self.view.frame.size.width * 420.0f/1080.0f;
    carouselHeight = self.view.frame.size.width *9.0f/16.0f;
    topocHeight = (self.view.frame.size.width-16)*130/360 + 42;
    
}
#pragma mark - InitUI -
-(void)configMainCollectionView
{
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 1,
    layout.minimumLineSpacing = 2;
    mainCollectionView  = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64) collectionViewLayout:layout];
    mainCollectionView.delegate = self;
    mainCollectionView.dataSource = self;
    mainCollectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:mainCollectionView];
    
    [mainCollectionView registerClass:[AdvertisingCollectionViewCell class] forCellWithReuseIdentifier:@"AdvertisingCollectionViewCell"];
    [mainCollectionView registerClass:[MenuCollectionViewCell class] forCellWithReuseIdentifier:@"MenuCollectionViewCell"];
    [mainCollectionView registerClass:[MomentCollectionViewCell class] forCellWithReuseIdentifier:@"MomentCollectionViewCell"];
    [mainCollectionView registerClass:[InterviewCollectionViewCell class] forCellWithReuseIdentifier:@"InterviewCollectionViewCell"];
    [mainCollectionView registerClass:[VideoCollectionViewCell class] forCellWithReuseIdentifier:@"VideoCollectionViewCell"];
    [mainCollectionView registerClass:[OneAdvertisingCollectionViewCell class] forCellWithReuseIdentifier:@"OneAdvertisingCollectionViewCell"];
    [mainCollectionView registerClass:[TopicCollectionViewCell class] forCellWithReuseIdentifier:@"TopicCollectionViewCell"];
    
    [mainCollectionView registerClass:[HomeHeadCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader  withReuseIdentifier:headCollectionReusableView];
    
}

- (void)initUI
{
    [self configMainCollectionView];
}

#pragma mark - Delegate
#pragma mark - UICollectionViewDataSource
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"AdvertisingCollectionViewCell"];
        AdvertisingCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor redColor];
        
        return cell;
    }
    else if (indexPath.section == 1)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"MenuCollectionViewCell"];
        MenuCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor blackColor];
        
        return cell;
    }
    else if (indexPath.section == 2)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"MomentCollectionViewCell"];
        MomentCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor grayColor];
        
        return cell;
    }
    else if (indexPath.section == 3)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"InterviewCollectionViewCell"];
        InterviewCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor brownColor];
        
        return cell;
    }
    else if (indexPath.section == 4)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"VideoCollectionViewCell"];
        VideoCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor greenColor];
        
        return cell;
    }
    else if (indexPath.section == 5)
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"OneAdvertisingCollectionViewCell"];
        OneAdvertisingCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor yellowColor];
        
        return cell;
    }
    else
    {
        NSString * CellIdentifier = [NSString stringWithFormat:@"TopicCollectionViewCell"];
        TopicCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        
        cell.backgroundColor = [UIColor blueColor];
        
        return cell;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        return CGSizeMake(self.view.frame.size.width, carouselHeight);
    }
    else if (indexPath.section == 1)
    {
        return CGSizeMake((self.view.frame.size.width-15)/4, (self.view.frame.size.width-15)/4 +30);
    }
    else if (indexPath.section == 2)
    {
        return CGSizeMake((self.view.frame.size.width-2)/2, self.view.frame.size.width/2);
    }
    else if (indexPath.section == 3)
    {
        return CGSizeMake((self.view.frame.size.width-6)/3, (self.view.frame.size.width-5)/3+50);
    }else if (indexPath.section == 4)
    {
        return CGSizeMake((self.view.frame.size.width-2)/2, (self.view.frame.size.width-2)/2 +30);
    }else if (indexPath.section == 5)
    {
        return CGSizeMake(self.view.frame.size.width, oneADHeight);
        
    }else
    {
        return CGSizeMake(self.view.frame.size.width, topocHeight);
        
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 7;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return 1;
    }
    else if (section == 1)
    {
        return 6;
    }
    else if (section == 2)
    {
        return 4;
    }
    else if (section == 3)
    {
        return 3;
    }
    else if (section == 4)
    {
        return 4;
    }
    else if (section == 5)
    {
        return 1;
    }
    else
    {
        return 1;
    }
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    HomeHeadCollectionReusableView *headerView = [collectionView  dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headCollectionReusableView forIndexPath:indexPath];
    headerView.backgroundColor = [UIColor purpleColor];
    
    return headerView;
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(self.view.frame.size.width, 45);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
