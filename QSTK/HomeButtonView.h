//
//  HomeButtonView.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeViewController;

@interface HomeButtonView : UIView

@property (nonatomic, assign) int index;

@property (nonatomic, assign) HomeViewController *parent;

@property (strong , nonatomic) IBOutlet UIImageView *buttonImageView;

@property (strong, nonatomic) IBOutlet UILabel *tittleLbl;

- (IBAction)selectionButtonAction:(UIButton *)sender;

-(void)setImageAtIndex:(int) index;

-(void)setTittleAtIndex:(int)index;

@end
