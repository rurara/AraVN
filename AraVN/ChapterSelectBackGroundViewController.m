//
//  ChapterSelectBackGroundViewController.m
//  AraVN
//
//  Created by happy rurara on 12. 8. 6..
//
//

#import "ChapterSelectBackGroundViewController.h"

@interface ChapterSelectBackGroundViewController ()

@end

@implementation ChapterSelectBackGroundViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    mistLabel.frame = self.view.frame;
}

- (void)viewDidUnload
{
    [mistLabel release];
    mistLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [mistLabel release];
    [super dealloc];
}
@end
