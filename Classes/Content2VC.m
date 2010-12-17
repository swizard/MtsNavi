//
//  Content2VC.m
//  MtsNavi
//
//  Created by eric on 10. 12. 8..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Content2VC.h"
#import "Logger.h"

@implementation Content2VC

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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

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

- (void)viewDidLoad {
    [super viewDidLoad];
	log_info(@"LOAD");
}
-(void)viewDidUnload{
	log_info(@"--UNLOAD");
	[super viewDidUnload];
}

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	log_info(@"WILL");
}
-(void)viewWillDisappear:(BOOL)animated{
	log_info(@"--WILLDIS");
	[super viewWillDisappear:animated];
}
- (void)dealloc {
	log_info(@"^^ I WILL DIE");
    [super dealloc];
}


@end
