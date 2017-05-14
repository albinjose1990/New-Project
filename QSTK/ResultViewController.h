//
//  ResultViewController.h
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TopbarView;
@interface ResultViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) IBOutlet UIView *cardView;

@property (strong, nonatomic) IBOutlet UIView *downLoaderView;

- (IBAction)swipeAction:(UISwipeGestureRecognizer*)sender;

@property (nonatomic, weak) IBOutlet TopbarView *topBarView;


-(IBAction)ButtonActions:(id)sender;



@end
