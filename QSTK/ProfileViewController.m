//
//  ProfileViewController.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "ProfileViewController.h"
#import "ProfileTableViewCell.h"

@interface ProfileViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUi];
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

-(void)setUi
{
   
    
    [[self.profileImageView layer] setCornerRadius:70];
    
    [[self.profileImageView layer] setMasksToBounds:YES];
    
    [[self.profileImageView layer] setBorderWidth:1];
    
    [[self.profileImageView layer] setBorderColor:[[UIColor lightGrayColor] CGColor]];

    [[self.badgeView layer] setCornerRadius:30];
    
    [[self.badgeView layer] setMasksToBounds:YES];
    
    self.riderNameLbl.text = [NSString stringWithFormat:@"%@",self.riderName];
    
    [self.profileImageView setImage:[UIImage imageNamed:self.riderImage]];
    
    self.badgeValueLbl.text = [NSString stringWithFormat:@"%@",self.badgeValue];
    
    if (self.index == 0)
    {
        
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"FIM World Superbike Championship",@"FIM CEV Spanish Championship",@"FIM Endurance World Championship",@"Qatar International Road Racing Championship",@"Qatar Superbike Championship",@"Losail 600 Cup", nil];
        
    }
    
    else if (self.index == 1)
    {
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"Qatar Superbike Championship",@"Losail600 Cup",@"BMR 600 Championship", nil];
    }
    
    else if (self.index == 2)
    {
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"Moto2 Championship",@"FIM Endurance World Championship",@"Wild Card WSBK",@"Wild Card STK1000",@"Losail600 Cup", nil];
    }
    
    else if (self.index == 3)
    {
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"First participation in a Championship",nil];
    }
    
    else if (self.index == 4)
    {
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"First participation in a Championship",nil];
    }
    
    else if (self.index == 5)
    {
        self.careerArray = [[NSMutableArray alloc] initWithObjects:@"Qatar Superbike Championship",@"Losail600 Cup",nil];
    }
    
}

#pragma mark Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.careerArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"profileTableCell";
    
    ProfileTableViewCell *cell = (ProfileTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = (ProfileTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"ProfileTableViewCell" owner:nil options:nil] objectAtIndex:0];
        
    }
    
    cell.leagueNameLbl.text = [NSString stringWithFormat:@"%@",[self.careerArray objectAtIndex:indexPath.row]];
    
//    if (indexPath.row ==0)
//    {
//        cell.leagueNameLbl.text = @"FIM Endurance world Championship";
//    }
//    
//    else if (indexPath.row == 1)
//    {
//     
//        cell.leagueNameLbl.text = @"Qatar Int. Road racing Championship";
//    }
//    
//    else if (indexPath.row == 2)
//    {
//        
//        cell.leagueNameLbl.text = @"Qatar Superbike";
//    }
//    
//    else if (indexPath.row == 3)
//    {
//        
//        cell.leagueNameLbl.text = @"Losaila 600 cup";
//    }
//    
//    else if (indexPath.row == 4)
//    {
//        
//        cell.leagueNameLbl.text = @"Beharin superbike Championship";
//    }
//    
//    else if (indexPath.row == 5)
//    {
//        
//        cell.leagueNameLbl.text = @"UAE Superbike Championship";
//    }
//
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
