//
//  RoundsViewController.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "RoundsViewController.h"
#import "constants.h"
#import "KNCirclePercentView.h"
#import "RoundsCollectionViewCell.h"
#import "AppDelegate.h"
@interface RoundsViewController ()
{
    NSIndexPath *selectedCategory;
    
}

@end

@implementation RoundsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setPersentLoader];
    
    [self setUI];
    
    [self setCorroselView];
    
    [self setUpCarousel];

    // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

-(void)setPersentLoader
{
   
}
-(void)setUI
{
    selectedCategory=[NSIndexPath indexPathForItem:0 inSection:0];

    [self.collectionView registerNib:[UINib nibWithNibName:@"RoundsCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"roundcell"];

    [self.scrollView setContentSize:CGSizeMake(0,self.mapView.frame.origin.y+self.mapView.frame.size.height)];
    
    [[self.dateConatinerView layer] setCornerRadius:30];
    
    [[self.dateConatinerView layer] setMasksToBounds:YES];
    
    
}

#pragma mark----setting Corrosel Views------

- (void)setUpCarousel
{
    [self.carousel setAlpha:0.0];
    
//    [self.cityNameLabel setAlpha:0.0];
//    
//    [self.cityDetailsLabel setAlpha:0.0];
    
    if(!self.carousel)
    {
        self.carousel = [[iCarousel alloc] initWithFrame:CGRectMake(0, 60, SCREEN_WIDTH, 200)];
        
        [self.carousel setBackgroundColor:[UIColor clearColor]];
        
        [self.carousel setType:iCarouselTypeRotary];
        
        [self.carousel setDataSource:self];
        
        [self.carousel setDelegate:self];
        
        [self.scrollView addSubview:self.carousel];
        
        [self.carousel setAlpha:0.0];
    }
    else
    {
        [self.carousel reloadData];
        
        [self.carousel reloadInputViews];
    }
    
    //
    
    [UIView animateWithDuration:0.75 animations:^{
        [self.carousel setAlpha:1.0];
        
//        [self.cityNameLabel setAlpha:1.0];
//        
//        [self.cityDetailsLabel setAlpha:1.0];
    }];
    
    if([self.carouselItems count] < 2)
    {
        [self.carousel setScrollEnabled:NO];
    }
    else
    {
        [self.carousel setScrollEnabled:YES];
    }
}


-(void)setCorroselView
{
    if(self.carouselItems)
    {
        [self.carouselItems removeAllObjects];
    }
    
    if(!self.carouselItems)
    {
        self.carouselItems = [NSMutableArray array];
    }

    [self.view setBackgroundColor:[UIColor grayColor]];
    
    for(int i = 0;i <10;i++)
    {
        
   
    UIView *carouselItemView = [[UIView alloc] initWithFrame:CGRectMake( 0, 0, 200, 150)];
    
    [carouselItemView setBackgroundColor:[UIColor clearColor]];
    
    UIImageView *buttonImg = [[UIImageView alloc] initWithFrame:CGRectMake( 0, 0, 200, 150)];
    
    [[buttonImg layer] setCornerRadius:14];
//    
    [[buttonImg layer] setBorderColor:[UIColor whiteColor].CGColor];
    
    [[buttonImg layer] setBorderWidth:1.0];
    
    [buttonImg setBackgroundColor:[UIColor colorWithRed:0.7529 green:0.7608 blue:0.7686 alpha:1.0]];
    
    [[buttonImg layer] setMasksToBounds:YES];
        
   // [buttonImg setImage:[UIImage imageNamed:@"News_%d.jpg",i]];
        
    [buttonImg setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Round_%d.jpg",i%3]]];
    
    [carouselItemView addSubview:buttonImg];
    
    [self.carouselItems addObject:carouselItemView];
        
    }


    
}


#pragma mark -
#pragma mark iCarousel methods

- (NSInteger)numberOfItemsInCarousel:(__unused iCarousel *)carousel
{
    return (NSInteger)[self.carouselItems count];
}

- (UIView *)carousel:(__unused iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    return [self.carouselItems objectAtIndex:index];
}

- (NSInteger)numberOfPlaceholdersInCarousel:(__unused iCarousel *)carousel
{
    //note: placeholder views are only displayed on some carousels if wrapping is disabled
    return 2;
}

- (UIView *)carousel:(__unused iCarousel *)carousel placeholderViewAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    return [self.carouselItems objectAtIndex:index];
}

- (CATransform3D)carousel:(__unused iCarousel *)carousel itemTransformForOffset:(CGFloat)offset baseTransform:(CATransform3D)transform
{
    //implement 'flip3D' style carousel
    transform = CATransform3DRotate(transform, M_PI / 8.0f, 0.0f, 1.0f, 0.0f);
    
    return CATransform3DTranslate(transform, 0.0f, 0.0f, offset * self.carousel.itemWidth);
}

- (CGFloat)carousel:(__unused iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    //customize carousel display
    switch (option)
    {
        case iCarouselOptionWrap:
        {
            //normally you would hard-code this to YES or NO
            return YES;
        }
        case iCarouselOptionSpacing:
        {
            //add a bit of spacing between the item views
            return value * 1.2f;
        }
        case iCarouselOptionFadeMax:
        {
            if (self.carousel.type == iCarouselTypeCustom)
            {
                //set opacity based on distance from camera
                return 0.0f;
            }
            return value;
        }
        case iCarouselOptionShowBackfaces:
        case iCarouselOptionRadius:
        case iCarouselOptionAngle:
        case iCarouselOptionArc:
        case iCarouselOptionTilt:
        case iCarouselOptionCount:
        case iCarouselOptionFadeMin:
        case iCarouselOptionFadeMinAlpha:
        case iCarouselOptionFadeRange:
        case iCarouselOptionOffsetMultiplier:
        case iCarouselOptionVisibleItems:
        {
            return value;
        }
    }
}

#pragma mark-----CollectionView-----

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //    float width;
    //
    //    if ([selectedCategory isEqual:indexPath]) {
    //
    //        width = ceil([[[[categoryArray objectAtIndex:indexPath.row] objectForKey:@"category"] uppercaseString] sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"Avenir-Black" size:14.0f]}].width);
    //    }
    //    else
    //    {
    //        width = ceil([[[[categoryArray objectAtIndex:indexPath.row] objectForKey:@"category"] uppercaseString] sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"Avenir-Medium" size:14.0f]}].width);
    //    }
    
    
    
    
    return CGSizeMake(SCREEN_WIDTH/2.5, 50);
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return 10;
    
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    RoundsCollectionViewCell *cell=(RoundsCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"roundcell" forIndexPath:indexPath];
    
    if ([selectedCategory isEqual:indexPath]) {
        
        cell.circleLoader.hidden=NO;
        
        [cell drawCircleLoader];
        
        //[cell setBackgroundColor:[UIColor darkGrayColor]];
    }
    else
    {
        cell.circleLoader.hidden=YES;
        
        //[cell setBackgroundColor:[UIColor lightGrayColor]];
    }
    
    cell.roundNameLbl.text = [NSString stringWithFormat:@"Round %ld",(long)indexPath.row];
    
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self.carousel setAlpha:0];
    
    [self.mapView setAlpha:0];
    
    if (selectedCategory.row<indexPath.row) {
        
        selectedCategory=indexPath;
        
        [self swipeTabletoLeft];
    }
    else
    {
        selectedCategory=indexPath;
        [self swipeTabletoRight];
        
    }
    
    
    [self.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    
    
    //[self callWebservice];
    
    
}

-(void)swipeTabletoLeft
{
    
   // [[AppDelegate sharedAppDelegate] startActivityIndicator];
    //    if(isSearchMode)
    //    {
    //        return;
    //    }
    
    [self addAnimationPresentToView:self.scrollView];
    
    //    [UIView animateWithDuration:0.3 animations:^{
    //
    //        self.mallsTable.frame=CGRectMake(-self.mallsTable.frame.size.width, self.mallsTable.frame.origin.y, self.mallsTable.frame.size.width, self.mallsTable.frame.size.height);
    //
    //    } completion:^(BOOL finished) {
    //
    //        self.mallsTable.frame=CGRectMake(self.mallsTable.frame.size.width, self.mallsTable.frame.origin.y, self.mallsTable.frame.size.width, self.mallsTable.frame.size.height);
    //
    //        [UIView animateWithDuration:0.3 animations:^{
    //            self.mallsTable.frame=CGRectMake(0, self.mallsTable.frame.origin.y, self.mallsTable.frame.size.width, self.mallsTable.frame.size.height);
    //        }completion:^(BOOL finished) {
    //
    //shopsArray=nil;
    
    //    filteredList=nil;
    //    filteredList=[NSMutableArray arrayWithArray:[self filterlist:shopsArray]];
    //    [self.mallsTable reloadData];
    //
    
    [self.collectionView scrollToItemAtIndexPath:selectedCategory atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    
    [self.collectionView reloadData];
    //
    //
    //
    //        }];
    //
    //    }];
}

-(void)swipeTabletoRight
{
    
   // [[AppDelegate sharedAppDelegate] startActivityIndicator];
    
    [self addAnimationPresentToViewOut:self.scrollView];
    
    [self.collectionView scrollToItemAtIndexPath:selectedCategory atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    
    [self.collectionView reloadData];
    
}

- (void)addAnimationPresentToView:(UIView *)viewTobeAnimated
{
    CATransition *transition = [CATransition animation];
    
    transition.duration = 0.5;
    
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    transition.fillMode=kCAFillModeForwards;
    
    transition.type = kCATransitionPush;
    
    transition.subtype =kCATransitionFromRight;
    
    [viewTobeAnimated.layer addAnimation:transition forKey:nil];
    
    [[AppDelegate sharedAppDelegate] stopActivityIndicator];
    
    
    [self setViewAnimated];
    
    
}

- (void)addAnimationPresentToViewOut:(UIView *)viewTobeAnimated
{
    CATransition *transition = [CATransition animation];
    
    transition.duration = 0.5;
    
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    transition.fillMode=kCAFillModeForwards;
    
    transition.type = kCATransitionPush;
    
    transition.subtype =kCATransitionFromLeft;
    
    [viewTobeAnimated.layer addAnimation:transition forKey:nil];
    
    [[AppDelegate sharedAppDelegate] stopActivityIndicator];
    
    [self setViewAnimated];
    
}

-(void)setViewAnimated
{
    [UIView animateWithDuration:3 animations:^{
        
        [self.carousel setAlpha:1];
        
        [self.mapView setAlpha:1];
    }];
    
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ButtonActions:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
