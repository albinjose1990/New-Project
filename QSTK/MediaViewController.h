//
//  MediaViewController.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediaViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) NSMutableArray *videoThambunilArray;

@property (strong, nonatomic) NSMutableArray *videoUrlArray;


-(IBAction)ButtonActions:(id)sender;

@property (strong, nonatomic) NSMutableArray *videosArray;

- (void)VideoSelectedWithIndex:(int)index;

@end
