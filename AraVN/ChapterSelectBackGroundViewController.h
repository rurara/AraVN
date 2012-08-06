//
//  ChapterSelectBackGroundViewController.h
//  AraVN
//
//  Created by happy rurara on 12. 8. 6..
//
//

#import <UIKit/UIKit.h>

@interface ChapterSelectBackGroundViewController : UIViewController{
    IBOutlet UILabel *mistLabel;
    NSArray *selectArray;
}
@property (nonatomic, retain) NSArray *selectArray;
- (void) settingMistLabel;
- (void) drawButton;
@end
