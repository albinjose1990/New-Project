//
//  AppDelegate.h
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "constants.h"
#import "IMGActivityIndicator.h"

@class HomeViewController;
@class InitialViewController;
@class ResultViewController;
@class RoundsViewController;
@class MediaViewController;
@class PhotoViewController;
@class SponsorsViewController;
@class InitialLoaderViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (strong, nonatomic) HomeViewController *homeView;

@property (strong, nonatomic) InitialViewController *initialView;

@property (strong, nonatomic) ResultViewController *resultView;

@property (strong, nonatomic) RoundsViewController *roundsView;

@property (strong, nonatomic) MediaViewController *mediaView;

@property (strong, nonatomic) PhotoViewController *photoView;

@property (strong, nonatomic) SponsorsViewController *sponsorView;

@property (strong, nonatomic) InitialLoaderViewController *initialLoaderView;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) UIView *ativityView;

@property (strong, nonatomic) IMGActivityIndicator *indicator;

+ (AppDelegate *)sharedAppDelegate;

- (void)saveContext;

- (void)setTopBar:(navbarType)navtype viewcontroller:(UIViewController*)currViewController title:(NSString*)title;

- (void)startActivityIndicator;

- (void)stopActivityIndicator;

-(void)popToViewController;


@end

