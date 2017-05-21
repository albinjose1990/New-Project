//
//  Common.h
//  Travall
//
//  Created by Apple on 10/5/16.
//  Copyright © 2016 Sinergia Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface Common : NSObject
{
    BOOL isNetworkReachable;
}

+ (Common *)sharedCommonManager;

- (BOOL)hasInternet:(UIView *)classView;

- (void)setCameraButtonOnTab:(UIViewController *)viewController;

- (UIAlertView *)alertTitle:(NSString *)title message:(NSString *)message delegate:(UIViewController *)del;

- (NSString *)relativeDateStringForDate:(NSDate *)date;

- (NSDate *)stringToDataConverter:(NSString *)date;

- (UIView *)viewForKeyboard:(UIViewController*)viewController;

-(NSString *)SetUrl:(NSString *) Url;

-(BOOL)ChekForLogedIn;

-(BOOL)CheckTravall:(int)Id;

- (void)shareWithTittle:(NSString *)content and:(NSString *)Url;


@end
