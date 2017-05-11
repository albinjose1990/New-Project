//
//  AppDelegate.m
//  QSTK
//
//  Created by Amr on 5/9/17.
//  Copyright © 2017 Amr. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "constants.h"
#import "TopbarView.h"
#import "constants.h"
#import "IMGActivityIndicator.h"
#import "DGActivityIndicatorView.h"
#import "InitialViewController.h"
#import "ResultViewController.h"
#import "RoundsViewController.h"
#import "MediaViewController.h"
#import "PhotoViewController.h"
#define kActivityViewTag        1000
#define kActivityIndicatorTag   1001

@interface AppDelegate ()

{
    UIViewController *currentViewController;
    
    TopbarView *topBar;
    
    UIView *contentView,*BgView,*containerView;



}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.homeView = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:[NSBundle mainBundle]];
    
    self.initialView = [[InitialViewController alloc] initWithNibName:@"InitialViewController" bundle:[NSBundle mainBundle]];
    
    self.resultView = [[ResultViewController alloc] initWithNibName:@"ResultViewController" bundle:[NSBundle mainBundle]];
    
    self.roundsView = [[RoundsViewController alloc] initWithNibName:@"RoundsViewController" bundle:[NSBundle mainBundle]];
    
    self.mediaView = [[MediaViewController alloc] initWithNibName:@"MediaViewController" bundle:[NSBundle mainBundle]];
    
    self.photoView = [[PhotoViewController alloc] initWithNibName:@"PhotoViewController" bundle:[NSBundle mainBundle]];

    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.initialView];
    
    [self.navigationController setNavigationBarHidden:YES];
    
    [self.window setRootViewController:self.navigationController];
    
    [self.window makeKeyAndVisible];

    
    
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

+ (AppDelegate *)sharedAppDelegate
{
    
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)setTopBar:(navbarType)navtype viewcontroller:(UIViewController*)currViewController title:(NSString*)title
{
    currentViewController=currViewController;
    
    
    
    if ([topBar superview]) {
        
        [topBar removeFromSuperview];
        topBar=nil;
    }
    
    if (navtype==navbarsetLoc) {
        
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"TopBar" owner:nil options:nil] objectAtIndex:0];
    }
    else if (navtype==navbarList)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:2];
    }
    else if (navtype==navbarMulti)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:4];
    }
    else if (navtype==navbarMap)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:3];
    }
    else if (navtype==navbarProfile)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:1];
    }
    else if (navtype==navbarTitle)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:5];
    }
    
    else if (navtype==navbarMultiwhite)
    {
//        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:6];
//        
//        if ([currViewController isKindOfClass:[ShopsDetailViewController class]]) {
//            
//            topBar.bookmarkBtn.hidden=YES;
//        }
//        else
//        {
//            
//        }
        
    }
    
    else if (navtype==navbarClear)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:7];
    }
    
    else if (navtype==navbarMallMap)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:8];
    }
    else if (navtype == navbarMicelloSearch)
    {
        topBar = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] objectAtIndex:9];
    }
    
//    if ([userLocation length]&&userLocation!=nil) {
//        
//        [topBar.locationBtn setTitle:userLocation forState:UIControlStateNormal];
//    }
//    else
//    {
//        //[[DataManager sharedDataManager] setObjectInUserDefaults:[[mallsArray objectAtIndex:0] objectForKey:@"mallClusterName"] forKey:kUserClusterName];
//        
//        if ([[DataManager sharedDataManager] objectInUserDefaultsForKey:kUserClusterName]) {
//            
//            userLocation = [[DataManager sharedDataManager] objectInUserDefaultsForKey:kUserClusterName];
//            [topBar.locationBtn setTitle:userLocation forState:UIControlStateNormal];
//        }
//    }
//    
    
    //topBar = [[[NSBundle mainBundle] loadNibNamed:@"TopBarView" owner:nil options:nil] objectAtIndex:0];
    
    [topBar setFrame:CGRectMake( 0, 0, SCREEN_WIDTH, 64)];
    
    [containerView addSubview:topBar];
    
    topBar.navdelegate = currentViewController;
    
    [topBar setViewController:currentViewController];
    
    if (title.length) {
        [topBar setHeaderTitle:title];
    }
    
    
}

#pragma mark Activity Indicator

- (void)startActivityIndicator
{
    if(!self.ativityView)
    {
        self.ativityView = [[UIView alloc] initWithFrame:self.window.bounds];
        
        [self.ativityView setBackgroundColor:[UIColor clearColor]];
        
        [self.ativityView setUserInteractionEnabled:NO];
        
        UIImageView *loadingBgImageView = [[UIImageView alloc] initWithFrame:CGRectMake( 0, 0, 50, 50)];
        
        [loadingBgImageView setTag:kActivityViewTag];
        
        [loadingBgImageView.layer setCornerRadius:10.0];
        
        [loadingBgImageView setBackgroundColor:[UIColor grayColor]];
        
        [loadingBgImageView setCenter:self.window.center];
        
        [self.ativityView addSubview:loadingBgImageView];
    }
    
    DGActivityIndicatorView *activityIndicatorView = (DGActivityIndicatorView *)[self.ativityView viewWithTag:kActivityIndicatorTag];
    
    if(activityIndicatorView && [activityIndicatorView superview])
    {
        [activityIndicatorView removeFromSuperview];
        
        activityIndicatorView = nil;
    }
    
    activityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:DGActivityIndicatorAnimationTypeNineDots tintColor:[UIColor whiteColor]];
    
    [activityIndicatorView setFrame:CGRectMake( 0, 0, 20, 20)];
    
    [activityIndicatorView setTag:kActivityIndicatorTag];
    
    [activityIndicatorView setCenter:self.window.center];
    
    [self.ativityView addSubview:activityIndicatorView];
    
    [activityIndicatorView startAnimating];
    
    UIImageView *loadingBgImageView = (UIImageView *)[self.ativityView viewWithTag:kActivityViewTag];
    
    [loadingBgImageView setCenter:self.window.center];
    
    [activityIndicatorView setCenter:self.window.center];
    
    self.ativityView.center = self.window.center;
    
    if(![self.ativityView superview])
        [self.window addSubview:self.ativityView];
    
    [self.window setUserInteractionEnabled:NO];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)stopActivityIndicator
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    DGActivityIndicatorView *activityIndicatorView = (DGActivityIndicatorView *)[self.ativityView viewWithTag:kActivityIndicatorTag];
    
    [self.window setUserInteractionEnabled:YES];
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.ativityView setAlpha:0.0];
    } completion:^(BOOL finished) {
        
        if(activityIndicatorView && [activityIndicatorView superview])
        {
            [activityIndicatorView removeFromSuperview];
        }
        
        if([self.ativityView superview])
        {
            [self.ativityView removeFromSuperview];
        }
        
        [self.ativityView setAlpha:1.0];
    }];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"QSTK"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
