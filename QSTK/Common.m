//
//  Common.m
//  Travall
//
//  Created by Apple on 10/5/16.
//  Copyright © 2016 Sinergia Labs. All rights reserved.
//

#import "Common.h"
#import "constants.h"
#import "AppDelegate.h"
#define kInternetReachableCheckHost @"google.com"

@implementation Common
{
    
}
static Common *sharedCommonManager;

+ (Common*)sharedCommonManager;
{
    if (sharedCommonManager == nil)
    {
        sharedCommonManager = [[super allocWithZone:NULL] init];
    }

    return sharedCommonManager;
}


- (UIAlertView*)alertTitle:(NSString*)title message:(NSString*)message delegate:(UIViewController *)del
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:title message:message delegate:del cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    
   [[UIView appearance] setTintColor:[UIColor redColor]];
    
    return alert;
}
@end
