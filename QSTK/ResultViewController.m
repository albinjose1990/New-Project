//
//  ResultViewController.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "ResultViewController.h"
#import "ResultTopCollectionViewCell.h"
#import "constants.h"
#import "AppDelegate.h"
@interface ResultViewController ()

{
    NSIndexPath *selectedCategory;

}

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setCardDesign];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"ResultTopCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"resultCollectionViewCell"];
    
    selectedCategory=[NSIndexPath indexPathForItem:0 inSection:0];

    // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


-(void)setCardDesign
{
    
    self.cardView.backgroundColor = [UIColor whiteColor];
    
    self.cardView.layer.borderColor = [UIColor colorWithRed:0.9490 green:0.9490 blue:0.9490 alpha:0.5].CGColor;
    
    self.cardView.layer.borderWidth = 1;
    
    self.cardView.layer.masksToBounds = NO;
    
    if (SCREEN_WIDTH ==320)
    {
        self.cardView.layer.shadowColor = [UIColor clearColor].CGColor;

    }
    
    else{
    self.cardView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    }
    
    self.cardView.layer.shadowOpacity = 0.75;
    
    self.cardView.layer.shadowRadius = 1;
    
    self.cardView.layer.shadowOffset = CGSizeMake(0, 1);
    
    self.cardView.layer.shadowPath = [[UIBezierPath bezierPathWithRect:self.cardView.bounds] CGPath];
    
    self.cardView.layer.rasterizationScale = [[UIScreen mainScreen] scale];
    
    self.cardView.layer.shouldRasterize = YES;
    
    [[self.downLoaderView layer] setCornerRadius:20];
    
    [[self.downLoaderView layer] setMasksToBounds:YES];
    
    
    
}

-(void)ButtonActions:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UICollectionView

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
    
    ResultTopCollectionViewCell *cell=(ResultTopCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"resultCollectionViewCell" forIndexPath:indexPath];
    
    if ([selectedCategory isEqual:indexPath]) {
        
        cell.separatorImgView.hidden=YES;
        
        [cell setBackgroundColor:[UIColor darkGrayColor]];
    }
    else
    {
        cell.separatorImgView.hidden=NO;
        
        [cell setBackgroundColor:[UIColor lightGrayColor]];
    }
    
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    
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
    
    [[AppDelegate sharedAppDelegate] startActivityIndicator];
//    if(isSearchMode)
//    {
//        return;
//    }
    
    [self addAnimationPresentToView:self.cardView];
    
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
    
    [[AppDelegate sharedAppDelegate] startActivityIndicator];
    
    [self addAnimationPresentToViewOut:self.cardView];
    
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
    
}

- (IBAction)swipeAction:(UISwipeGestureRecognizer*)sender
{
    if (sender.direction==UISwipeGestureRecognizerDirectionLeft)
    {
        NSIndexPath *newIndexpath;
        newIndexpath=[NSIndexPath indexPathForItem:selectedCategory.row+1 inSection:0];
        
        if (newIndexpath.row>10-1) {
            newIndexpath=[NSIndexPath indexPathForItem:0 inSection:0];
            selectedCategory=newIndexpath;
        }
        else
        {
            selectedCategory=newIndexpath;
        }

        [self swipeTabletoLeft];
    }
    else
    {
        
        NSIndexPath *newIndexpath;
        
        
        newIndexpath=[NSIndexPath indexPathForItem:selectedCategory.row-1 inSection:0];
        
        if (newIndexpath.row<0) {
            newIndexpath=[NSIndexPath indexPathForItem:10-1 inSection:0];
            selectedCategory=newIndexpath;
        }
        else
        {
            selectedCategory=newIndexpath;
        }

        
        [self swipeTabletoRight];
        
    }

    
    
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
