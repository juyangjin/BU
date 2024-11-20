//
//  ViewController.h
//  Frog
//
//  Created by 502-14 on 11/04/2019.
//  Copyright © 2019 JIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *buttonArray, *mark;
@property NSDate *startTime;
@property NSTimeInterval elapsedTime,bestTime;
@property int frogCount;
@property int counter;
@property int order;

@property (weak, nonatomic) IBOutlet UILabel *Player;
@property (weak, nonatomic) IBOutlet UILabel *displayFrogCount;
@property (weak, nonatomic) IBOutlet UILabel *displayInterval;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UILabel *bestLapTime;

- (IBAction)pressButton:(id)sender;

- (IBAction)pressStart:(id)sender;

@end

