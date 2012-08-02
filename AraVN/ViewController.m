//
//  ViewController.m
//  cyphersGame01
//
//  Created by happy rurara on 12. 7. 21..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
     CGRect labelRect = [textLabel textRectForBounds:textLabel.bounds limitedToNumberOfLines:999];
     CGRect f = textLabel.frame;
     f.size.height = labelRect.size.height;
     textLabel.frame = f;
     */
    
    
    //    [textLabel sizeTofit];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"text" ofType:@"plist"];
    textArray = [[NSArray alloc] initWithContentsOfFile:path];
    
    textCount = 0;
    
    textLabel.text = [[textArray objectAtIndex:textCount]objectForKey:@"text"];
    
    [self.view bringSubviewToFront:characterImageView1];
    [self.view bringSubviewToFront:backgroundTextLabel];
    [self.view bringSubviewToFront:textLabel];
}



-(void)nextSeen{
    
    textCount ++;
    
    textLabel.text = [[textArray objectAtIndex:textCount]objectForKey:@"text"];
    
    
    //    NSLog(@" chch == %@",[[textArray objectAtIndex:textCount]objectForKey:@"character"]);
    NSLog(@"textcount - %d",textCount);
    
    if ([[[textArray objectAtIndex:textCount]objectForKey:@"character"] isEqualToString:@"shiva"]) {
        NSLog(@"시바 일러");
        [self.view bringSubviewToFront:characterImageView1];
        [self.view bringSubviewToFront:backgroundTextLabel];
        [self.view bringSubviewToFront:textLabel];
        
    }else if ([[[textArray objectAtIndex:textCount]objectForKey:@"character"] isEqualToString:@"doyle"]) {
        
        
        [self.view bringSubviewToFront:characterImageView2];
        [self.view bringSubviewToFront:backgroundTextLabel];
        [self.view bringSubviewToFront:textLabel];
        [self.view bringSubviewToFront:settingButton];
        
    }else {
        [self.view bringSubviewToFront:mistLabel];
    }
    
    
    
    if ([[[textArray objectAtIndex:textCount]objectForKey:@"character"] isEqualToString:@"0"]) {
        
    }else {
        NSLog(@"voice play");
        [self audioPlay];
    }
    
    if (textCount == 23) {
        textCount = -1;
    }
    
}



- (IBAction)settingViewAction:(id)sender {
    //    SettingViewController *settingView = [SettingViewController new];
    NSLog(@"setting view11111 ");
    //    SettingViewController *settingView = [SettingViewController new];
    
    SettingViewController *a = [[SettingViewController alloc]init];
    NSLog(@"setting view222 ");
    
    //    [self presentModalViewController:settingView animated:NO];
    //    [self.view addSubview:settingView.view];
    [self presentModalViewController:a animated:NO];
    
    //    [settingView release];
    NSLog(@"setting view 33333");
}

- (void) audioPlay{
    [player stop];
    
    NSString *tempString = [[NSString alloc]initWithFormat:@"%@",
                            [[textArray objectAtIndex:textCount]objectForKey:@"voice"]];
    NSLog(@"voice file -- %@",tempString);
    
    NSString *musicFilePath = [[NSBundle mainBundle] pathForResource:tempString ofType:@"mp3"];
    
    NSURL *musicURL = [[NSURL alloc] initFileURLWithPath:musicFilePath];
    
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:musicURL error:nil];
    
    [musicURL release];
    
    [player prepareToPlay];
    [player play];
    
}



-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self nextSeen];
}


- (void)viewDidUnload
{
    [textLabel release];
    textLabel = nil;
    [characterImageView1 release];
    characterImageView1 = nil;
    [characterImageView2 release];
    characterImageView2 = nil;
    [mistLabel release];
    mistLabel = nil;
    [backgroundTextLabel release];
    backgroundTextLabel = nil;
    [settingButton release];
    settingButton = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    bool returnValue;
    if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown ||
        interfaceOrientation == UIInterfaceOrientationPortrait ){
        NSLog(@"섰어요");
        
        returnValue = YES;
    }else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft   ||
              interfaceOrientation == UIInterfaceOrientationLandscapeRight){
        NSLog(@"누웠어요");
        
        returnValue = NO;
    }
    
    return returnValue;
}

- (void)dealloc {
    [textLabel release];
    [characterImageView1 release];
    [characterImageView2 release];
    [mistLabel release];
    [backgroundTextLabel release];
    [settingButton release];
    [super dealloc];
}
@end
