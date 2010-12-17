//
//  MunuVC.h
//  MtsNavi
//
//  Created by eric on 10. 12. 8..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MenuVC : UIViewController {
	NSMutableArray *vcs;
}
@property (nonatomic, retain) NSMutableArray *vcs;

- (IBAction) buttonClicked:(id)sender;
@end
