//
//  ViewController.h
//  Frog
//
//  Created by 502-14 on 11/04/2019.
//  Copyright © 2019 JIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *buttonArray, *mark, *frog;
@property NSDate *startTime;
@property NSTimeInterval elapTime;
@property int numOfFrog;
@property int huntButtonNo;
@property UIImage *catch;

@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UILabel *CurrentPlayer;
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

- (IBAction)backButton:(id)sender;
- (IBAction)p1:(id)sender;
- (IBAction)p2:(id)sender;
- (IBAction)p3:(id)sender;
- (IBAction)pressButton:(id)sender;

- (void) buttonUpdate;
- (void) rankUpdate;
- (void) nextGame;

@end

