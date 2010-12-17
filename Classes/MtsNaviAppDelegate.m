//
//  MtsNaviAppDelegate.m
//  MtsNavi
//
//  Created by eric on 10. 12. 8..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MtsNaviAppDelegate.h"
#import "MtsNaviViewController.h"

@implementation MtsNaviAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize windowVC;
@synthesize navigationController;

#pragma mark -
#pragma mark Munu
-(IBAction)showMenu{
	menuVC.view.hidden = NO;
}

-(void)changeViewController:(NSString*)className{
	UIViewController *vc = [[[NSClassFromString(className) alloc] initWithNibName:className bundle:nil] autorelease];
	[navigationController popViewControllerAnimated:NO];
	self.viewController = vc;
	[navigationController pushViewController:vc animated:NO];
	[windowVC.view setNeedsLayout];
}


//-(void)changeViewController:(NSString*)className{
//	UIViewController *vc = [[[NSClassFromString(className) alloc] initWithNibName:className bundle:nil] autorelease];
//	[self.viewController.view removeFromSuperview];
//	self.viewController = vc;
//	[self.window insertSubview:self.viewController.view atIndex:0];
//	[window setNeedsLayout];
//}


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	[window addSubview:windowVC.view];
	[window addSubview:navigationController.view];
//	[windowVC.view addSubview:navigationController.view];
	[navigationController pushViewController:viewController animated:NO];
    // Add windowVCthe view controller's view to the windowVC and display.
//    [self.windowVC.view addSubview:viewController.view];
    [self.window addSubview:menuVC.view];
	menuVC.view.hidden = YES;
	toolbar.frame = CGRectMake(0, 430, toolbar.frame.size.width, toolbar.frame.size.height);
	[self.window addSubview:toolbar];
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	[self.viewController viewWillDisappear:NO];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	[self.viewController viewWillAppear:NO];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [viewController release];
    [window release];
    [windowVC release];
    [navigationController release];
    [super dealloc];
}


@end
