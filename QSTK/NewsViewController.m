//
//  NewsViewController.m
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsTableViewCell.h"
@interface NewsViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.newsArray = [[NSMutableArray alloc] initWithObjects:@"AL SULAITI AND AL NAIMI SHARE VICTORIES IN THE FIFTH ROUND OF QSTK",@"AL NAIMI TAKES ANOTHER QSTK SUPERPOLE",@"KEY ROUNDS OF QATAR SUPERSTOCK THIS WEEKEND AT LOSAIL INTERNATIONAL CIRCUIT",@"AL NAIMI TAKES THE SUPERPOLE AND THRILLING WIN IN QSTK",nil];
    
    self.newsImageArrayy = [[NSMutableArray alloc] initWithObjects:@"News_0.jpg",@"News_1.jpg",@"News_2.jpg",@"News_3.jpg", nil];
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
    
    return self.newsArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 234;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"newsTableCell";
    
    NewsTableViewCell *cell = (NewsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = (NewsTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"NewsTableViewCell" owner:nil options:nil] objectAtIndex:0];
        
    }
    
    [cell.newsImgView setImage:[UIImage imageNamed:[self.newsImageArrayy objectAtIndex:indexPath.row]]];
    
    cell.newsDetailsLbl.text = [NSString stringWithFormat:@"%@",[self.newsArray objectAtIndex:indexPath.row]];
    
    return cell;
    
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
