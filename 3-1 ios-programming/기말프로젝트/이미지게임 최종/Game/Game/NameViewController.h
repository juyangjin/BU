//
//  NameViewController.h
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolBox.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NameViewController : UIViewController
{
    NSArray *gameImgArray;
    int gameIndex[9];
    int result2[9];
    AVAudioPlayer *catchBeep;
}
@property NSDate *startTime;
@property NSString *name;
@property NSString *no;
@property NSTimeInterval elapTime;

@property (weak, nonatomic) IBOutlet UILabel *game;
@property (weak, nonatomic) IBOutlet UILabel *ncName;
@property (weak, nonatomic) IBOutlet UILabel *ncNo;
@property (weak, nonatomic) IBOutlet UILabel *elapsedTime;
@property (weak, nonatomic) IBOutlet UIImageView *img0;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;
@property (weak, nonatomic) IBOutlet UIImageView *img4;
@property (weak, nonatomic) IBOutlet UIImageView *img5;
@property (weak, nonatomic) IBOutlet UIImageView *img6;
@property (weak, nonatomic) IBOutlet UIImageView *img7;
@property (weak, nonatomic) IBOutlet UIImageView *img8;
@property (weak, nonatomic) IBOutlet UISlider *sound;
@property (weak, nonatomic) IBOutlet UILabel *bestTime;

- (IBAction)btnup:(id)sender;
- (IBAction)btndown:(id)sender;
- (IBAction)btnL:(id)sender;
- (IBAction)btnR:(id)sender;
- (IBAction)soundV;

- (IBAction)start:(id)sender;

-(int)getRandomGame;
-(void)game1;

@end

NS_ASSUME_NONNULL_END
