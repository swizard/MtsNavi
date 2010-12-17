//
//  MtsNaviAppDelegate.h
//  MtsNavi
//
//  Created by eric on 10. 12. 8..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuVC.h"
#import "WindowVC.h"
@class MtsNaviViewController;

@interface MtsNaviAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIViewController *viewController;
	IBOutlet UIView *toolbar;
	IBOutlet MenuVC *menuVC;
	IBOutlet WindowVC *windowVC;
	IBOutlet UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *viewController;
@property (nonatomic, retain) IBOutlet WindowVC *windowVC;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

-(IBAction)showMenu;
@end

