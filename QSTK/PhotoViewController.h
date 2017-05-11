//
//  PhotoViewController.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PEARImageSlideViewController.h"

@interface PhotoViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) NSMutableArray *PhotoArray;

@property (nonatomic,retain)PEARImageSlideViewController * slideImageViewController;

-(IBAction)ButtonActions:(id)sender;

- (void)PhotoSelected:(int)index;

@end
