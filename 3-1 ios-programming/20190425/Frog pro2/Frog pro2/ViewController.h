//
//  ViewController.h
//  Frog pro2
//
//  Created by 502-14 on 25/04/2019.
//  Copyright © 2019 JIN. All rights reserved.
//

#import <UIKit/UIKit.h>
 #import <AudioToolbox/AudioToolBox.h>

@interface ViewController : UIViewController
{
    SystemSoundID catchBeep;
    SystemSoundID wrongBeep;
}

@property NSArray *buttonArray, *mark, *frog;
@property NSDate *startTime;
@property NSTimeInterval elapTime,S1,S2,S3;
@property int numOfFrog;
@property int huntButtonNo;
@property UIImage *catch;
@property int order;


@property (weak, nonatomic) IBOutlet UILabel *currentPlayer;
@property (weak, nonatomic) IBOutlet UILabel *frogCount;
@property (weak, nonatomic) IBOutlet UILabel *elapsedTime;
@property (weak, nonatomic) IBOutlet UILabel *score1;
@property (weak, nonatomic) IBOutlet UILabel *score2;
@property (weak, nonatomic) IBOutlet UILabel *score3;
@property (weak, nonatomic) IBOutlet UIButton *name1;
@property (weak, nonatomic) IBOutlet UIButton *name2;
@property (weak, nonatomic) IBOutlet UIButton *name3;

@property (weak, nonatomic) IBOutlet UIButton *holeButton1;
@property (weak, nonatomic) IBOutlet UIButton *holeButton2;
@property (weak, nonatomic) IBOutlet UIButton *holeButton3;
@property (weak, nonatomic) IBOutlet UIButton *holeButton4;
@property (weak, nonatomic) IBOutlet UIButton *holeButton5;

- (IBAction)player1Start:(id)sender;
- (IBAction)player2Start:(id)sender;
- (IBAction)player3Start:(id)sender;
- (IBAction)holeButtonPressed:(id)sender;

- (void) buttonUpdate;
- (void) rankUpdate;
- (void) nextGame;
@end

