//
//  RidesViewController.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RidesViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UILabel *detailLbl;

@property (strong ,nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *ridersArray;

@property (strong, nonatomic) NSMutableArray *badgeValueArray;

@property (strong, nonatomic) NSMutableArray *pointArray;

@property (strong, nonatomic) NSMutableArray *riderImgArray;

-(IBAction)ButtonActions:(id)sender;


@end
