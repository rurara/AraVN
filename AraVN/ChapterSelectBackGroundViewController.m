//
//  ChapterSelectBackGroundViewController.m
//  AraVN
//
//  Created by happy rurara on 12. 8. 6..
//
//

#import "ChapterSelectBackGroundViewController.h"
#import "ChapterSelectButtonViewController.h"

@interface ChapterSelectBackGroundViewController ()

@end

@implementation ChapterSelectBackGroundViewController
@synthesize selectArray;

- (void) settingMistLabel{

    int height = ([selectArray count] * 50) + (([selectArray count] -1) * 20);
    
    self.view.frame = CGRectMake( ( 320 - 150 ) /2, 40, 150, height);
    mistLabel.frame = CGRectMake( 0, 0, 150, height);

    [self drawButton];
}


- (void) drawButton{
    ChapterSelectButtonViewController *selectButton = [ChapterSelectButtonViewController new];
    selectButton.mainButton.frame = CGRectMake(0, 0, 150, 50);
    [self.view addSubview:selectButton.view];
}
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
    self.view.backgroundColor = [UIColor grayColor];
    // Do any additional setup after loading the view from its nib.

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
