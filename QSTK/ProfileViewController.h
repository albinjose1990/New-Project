//
//  ProfileViewController.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UILabel *profileNameLbl;

@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;

@property (strong ,nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIView *badgeView;

@property (strong, nonatomic) IBOutlet UILabel *badgeValueLbl;

@property (strong, nonatomic) NSString *riderName;

@property (strong , nonatomic) NSString *riderImage;

@property (strong, nonatomic) NSString *badgeValue;

@property (strong, nonatomic) IBOutlet UILabel *riderNameLbl;

@property ( nonatomic) int index;

@property (strong,nonatomic) NSMutableArray *careerArray;

-(IBAction)ButtonActions:(id)sender;


@end
