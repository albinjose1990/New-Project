//
//  NewsTableViewCell.h
//  QSTK
//
//  Created by Amr on 5/10/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *newsImgView;

@property (strong, nonatomic) IBOutlet UILabel *newsDetailsLbl;

@property (strong, nonatomic) IBOutlet UIView *dateContainerView;

@property (strong, nonatomic) IBOutlet UILabel *dateLbl;

@property (strong, nonatomic) IBOutlet UILabel *monthLbl;






@end
