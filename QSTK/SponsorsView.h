//
//  SponsorsView.h
//  QSTK
//
//  Created by Amr on 5/14/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SponsorsViewController;

@interface SponsorsView : UIView

@property (nonatomic, assign) int index;

@property (nonatomic, assign) SponsorsViewController *parent;

@property (strong , nonatomic) IBOutlet UIImageView *photo;

@property (strong, nonatomic) IBOutlet UILabel *tittleLbl;

@property (strong, nonatomic) IBOutlet UIImageView *sponsorIMgView;

- (IBAction)selectionButtonAction:(UIButton *)sender;


@end
