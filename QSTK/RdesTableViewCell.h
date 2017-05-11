//
//  RdesTableViewCell.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RdesTableViewCell : UITableViewCell

@property (strong ,nonatomic) IBOutlet UIView *profileImageContainerView;

@property (strong , nonatomic) IBOutlet UIView *badgeView;

@property (strong , nonatomic) IBOutlet UILabel *badgeLbl;

@property (strong , nonatomic) IBOutlet UILabel *riderNameLbl;

@property (strong , nonatomic) IBOutlet UILabel *riderMailLbl;

@property (strong , nonatomic) IBOutlet UILabel *riderPointLbl;

@property (strong , nonatomic) IBOutlet UIView *profileView;

@property (strong , nonatomic) IBOutlet UIView *detailView;

@property (strong , nonatomic) IBOutlet UILabel *detailLbl;

@property (strong , nonatomic) IBOutlet UIImageView *profileImgView;




@end
