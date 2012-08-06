//
//  ViewController.h
//  AraVN
//
//  Created by happy rurara on 12. 8. 2..
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AvFoundation.h>
@interface ViewController : UIViewController{
    NSArray *textArray;         //현재 챕터가 들어갈 배열
    NSDictionary *textIndex;         //선택지 정보나 다음 챕터의 정보등이 저장
    
    int textCount;
    IBOutlet UIButton *settingButton;
    IBOutlet UILabel *backgroundTextLabel;
    IBOutlet UILabel *textLabel;
    IBOutlet UIImageView *characterImageView1;
    IBOutlet UIImageView *characterImageView2;
    IBOutlet UILabel *mistLabel;
    
    AVAudioPlayer *player;
}

- (IBAction)settingViewAction:(id)sender;
-(void)audioPlay;
-(void)nextSeen;

@end
