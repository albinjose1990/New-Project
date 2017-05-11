//
//  RidesViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "RidesViewController.h"
#import "RdesTableViewCell.h"
#import "ProfileViewController.h"
#import "AppDelegate.h"
@interface RidesViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation RidesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ridersArray = [[NSMutableArray alloc] initWithObjects:@"Said Al Suliti",@"Soud Al Thani",@"Mashel Al Naimi",@"Khalid Al Mal",@"Ali Al Naimi",@"Jassim Al Thani", nil];
    
    self.badgeValueArray = [[NSMutableArray alloc] initWithObjects:@"12",@"21",@"33",@"42",@"22",@"11", nil];
    
    self.pointArray = [[NSMutableArray alloc] initWithObjects:@"11",@"97",@"95",@"94",@"91",@"90", nil];
    
    self.riderImgArray = [[NSMutableArray alloc] initWithObjects:@"Rider_0.jpg",@"Rider_1.jpg",@"Rider_2.jpg",@"Rider_3.jpg",@"Rider_4.jpg",@"Rider_5.jpg", nil];
    // Do any additional setup after loading the view from its nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


-(void)ButtonActions:(id)sender
{
    if (sender == self.backBtn)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.ridersArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"ridesTableCell";
    
    RdesTableViewCell *cell = (RdesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = (RdesTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"RdesTableViewCell" owner:nil options:nil] objectAtIndex:0];
        
    }
    
    cell.riderNameLbl.text = [NSString stringWithFormat:@"%@",[self.ridersArray objectAtIndex:indexPath.row]];
    
    cell.riderMailLbl.text = [NSString stringWithFormat:@"@%@",[self.ridersArray objectAtIndex:indexPath.row]];
    
    cell.badgeLbl.text = [NSString stringWithFormat:@"%@",[self.badgeValueArray objectAtIndex:indexPath.row]];
    
    cell.riderPointLbl.text = [NSString stringWithFormat:@"%@",[self.pointArray objectAtIndex:indexPath.row]];
    
    [cell.profileImgView setImage:[UIImage imageNamed:[self.riderImgArray objectAtIndex:indexPath.row]]];
    
    return cell;
    
}

#pragma mark -
#pragma mark Table view Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    ProfileViewController *profileView = [[ProfileViewController alloc] init];
    
    [[AppDelegate sharedAppDelegate] startActivityIndicator];
    
    profileView.riderName = [self.ridersArray objectAtIndex:indexPath.row];
    
    profileView.riderImage = [self.riderImgArray objectAtIndex:indexPath.row];
    
    profileView.badgeValue = [self.badgeValueArray objectAtIndex:indexPath.row];
    
    profileView.index = (int)indexPath.row;
    
    [self performSelector:@selector(NavigateTo:) withObject:profileView afterDelay:0.36];
    
}

-(void)NavigateTo:(UIViewController *) Vc
{
    [self.navigationController pushViewController:Vc animated:YES];
    
    [[AppDelegate sharedAppDelegate] stopActivityIndicator];
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
