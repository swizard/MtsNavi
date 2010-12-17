//
//  MunuVC.m
//  MtsNavi
//
//  Created by eric on 10. 12. 8..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MenuVC.h"
#import "MtsNaviAppDelegate.h"


@implementation MenuVC
@synthesize vcs; 

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/
- (IBAction) buttonClicked:(id)sender{
	NSString* className =[vcs objectAtIndex:((UIView*)sender).tag];
	MtsNaviAppDelegate* app = [UIApplication sharedApplication].delegate;
	[app changeViewController:className];
	self.view.hidden = YES;
}
- (void)viewDidLoad {
	self.vcs = [NSMutableArray arrayWithObjects:@"ContentVC", @"Content2VC",nil];
    [super viewDidLoad];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[vcs release];
    [super dealloc];
}


@end
