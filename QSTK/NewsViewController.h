//
//  NewsViewController.h
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *backBtn;

@property (strong ,nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *newsArray;

@property (strong,nonatomic) NSMutableArray *newsImageArrayy;


-(IBAction)ButtonActions:(id)sender;


@end
