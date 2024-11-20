//
//  ViewController.h
//  FrogCatcherPro
//
//  Created by bon506-08 on 2017. 10. 25..
//  Copyright © 2017년 JNH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *buttonArray,*playerArray,*name, *mark, *frog;
@property NSDate *startTime;
@property NSTimeInterval elapTime;
@property int numOfFrog;
@property int huntButtonNo;
@property UIImage *catch;
@property double bestTime1;

@property (weak, nonatomic) IBOutlet UIButton *backButton;
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

- (IBAction)backButtonPressed:(id)sender;
- (IBAction)playerStart:(id)sender;
- (IBAction)holeButtonPressed:(id)sender;

-(void)buttonUpdate;
-(void)rankUpdate;
-(void)nextGame;

@end

