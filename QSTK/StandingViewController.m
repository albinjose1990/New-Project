//
//  StandingViewController.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "StandingViewController.h"
#import "StandingTableViewCell.h"
#import "StandingHeaderTableViewCell.h"
@interface StandingViewController ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation StandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.ridersArray = [[NSMutableArray alloc] initWithObjects:@"Said Al Suliti",@"Soud Al Thani",@"Mashel Al Naimi",@"Khalid Al Mal",@"Ali Al Naimi",@"Jassim Al Thani", nil];
    
    self.positionArray = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    
    self.overallArray = [[NSMutableArray alloc] initWithObjects:@"11",@"97",@"95",@"94",@"91",@"90", nil];
    // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ButtonActions:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.ridersArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==0)
    {
        static NSString *cellIdentifier = @"standingHeadercell";
        
        StandingHeaderTableViewCell *cell = (StandingHeaderTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (cell == nil)
        {
            cell = (StandingHeaderTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"StandingHeaderTableViewCell" owner:nil options:nil] objectAtIndex:0];
            
        }
        
        return cell;

    }
    
    else
    {
    
    
    static NSString *cellIdentifier = @"standingCell";
    
    StandingTableViewCell *cell = (StandingTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = (StandingTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"StandingTableViewCell" owner:nil options:nil] objectAtIndex:0];
        
    }
        
        cell.nameLbl.text = [NSString stringWithFormat:@"%@",[self.ridersArray objectAtIndex:indexPath.row]];
        
        cell.posLbl.text = [NSString stringWithFormat:@"%@",[self.positionArray objectAtIndex:indexPath.row]];
        
        cell.overallLbl.text = [NSString stringWithFormat:@"%@",[self.overallArray objectAtIndex:indexPath.row]];
        
    
    if (indexPath.row%2 == 0)
    {
        [cell setBackgroundColor:[UIColor grayColor]];
    }
    
    else
    {
        [cell setBackgroundColor:[UIColor lightGrayColor]];
    }
     return cell;
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
