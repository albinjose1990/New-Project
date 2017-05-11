//
//  TopbarView.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Protocol.h"
@interface TopbarView : UIView

@property (weak, nonatomic) id <cellpass>navdelegate;

-(void)setViewController:(UIViewController*)view;

- (void)setHeaderTitle:(NSString *)title;

@property (weak, nonatomic) IBOutlet UILabel *navTitle;

@end
