//
//  ViewController.h
//  Frog2_20173555
//
//  Created by YANG on 28/04/2019.
//  Copyright © 2019 YANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    SystemSoundID catchBeep;
    SystemSoundID wrongBeep;
}

@property NSArray *buttonArray, *mark, *frog, *startArray, *name;
@property NSDate *startTime;
@property NSTimeInterval elapTime;
@property int numOfFrog;
@property int huntButtonNo;
@property UIImage *catch;
@property double S1,S2,S3;

@property (weak, nonatomic) IBOutlet UILabel *currentPlayer;
@property (weak, nonatomic) IBOutlet UILabel *frogCount;
@property (weak, nonatomic) IBOutlet UILabel *elapsedTime;
@property (weak, nonatomic) IBOutlet UILabel *score1;
@property (weak, nonatomic) IBOutlet UILabel *score2;
@property (weak, nonatomic) IBOutlet UILabel *score3;
@property (weak, nonatomic) IBOutlet UIButton *name1;
@property (weak, nonatomic) IBOutlet UIButton *name2;
@property (weak, nonatomic) IBOutlet UIButton *name3;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;

- (IBAction)Start:(id)sender;

- (IBAction)holebutton:(id)sender;

- (void) buttonUpdate;
- (void) rankUpdate;
- (void) nextGame;
@end

