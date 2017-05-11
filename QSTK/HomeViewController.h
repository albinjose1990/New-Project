//
//  HomeViewController.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *topImageView;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

- (void)VideoSelectedWithIndex:(int)index;




@end
