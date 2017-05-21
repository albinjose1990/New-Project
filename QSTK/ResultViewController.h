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

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

-(IBAction)ButtonActions:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *downloadBtn;

@property (strong, nonatomic) NSMutableArray *roundDetailsArray;
@end
