//
//  StandingViewController.h
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StandingViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *ridersArray;

@property (strong, nonatomic) NSMutableArray *positionArray;

@property (strong, nonatomic) NSMutableArray *overallArray;

-(IBAction)ButtonActions:(id)sender;

@end
