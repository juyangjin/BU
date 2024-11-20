//
//  ViewController.m
//  Frog pro2
//
//  Created by 502-14 on 25/04/2019.
//  Copyright © 2019 JIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize buttonArray;
@synthesize frog, mark;
@synthesize startTime;
@synthesize elapTime;
@synthesize numOfFrog;
@synthesize huntButtonNo;
@synthesize catch;
@synthesize order;
@synthesize S1;
@synthesize S2;
@synthesize S3;

@synthesize currentPlayer;
@synthesize frogCount;
@synthesize elapsedTime;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize holeButton1;
@synthesize holeButton2;
@synthesize holeButton3;
@synthesize holeButton4;
@synthesize holeButton5;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *path;
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Indigo" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path, &catchBeep);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Boing" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path, &wrongBeep);
    
    buttonArray = [NSArray arrayWithObjects:holeButton1, holeButton2, holeButton3,holeButton4, holeButton5, nil];
    
    UIImage *image1 = [UIImage imageNamed:@"frog1.png"];
    UIImage *image2 = [UIImage imageNamed:@"frog2.png"];
    UIImage *image3 = [UIImage imageNamed:@"frog3.png"];
    UIImage *image4 = [UIImage imageNamed:@"frog4.png"];
    UIImage *image5 = [UIImage imageNamed:@"frog5.png"];
    
    frog = [NSArray arrayWithObjects:image1, image2, image3, image4, image5, nil];
    
    order = 0;
    
    NSTimeInterval S1 = 100.0;
    NSTimeInterval S2 = 100.0;
    NSTimeInterval S3 = 100.0;
    
    mark = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    catch = [UIImage imageNamed:@"catch.png"];
    
    for (int i=0; i<5; i++) {
        UIButton *holeButton = [self.buttonArray objectAtIndex:i];
        
        [holeButton setTitle:[mark objectAtIndex:i] forState:UIControlStateNormal];
        [holeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [holeButton setBackgroundImage:[UIImage imageNamed:@"Hole.png"]
                              forState:UIControlStateNormal];
    }
    numOfFrog = 0;
}

- (void) nextGame {
    numOfFrog = 10;
    
    self.frogCount.text = [NSString stringWithFormat:@"%d", numOfFrog];
    self.elapsedTime.text = @"0";
    
    for (int i=0; i<5; i++) {
        UIButton *holeButton = [self.buttonArray objectAtIndex:i];
        [holeButton setTitle:[mark objectAtIndex:i]
                    forState:UIControlStateNormal];
        [holeButton setTitleColor:[UIColor whiteColor]
                         forState:UIControlStateNormal];
    }
}

- (void) buttonUpdate
{
    int rndNum;
    NSTimeInterval rndSeed;
    
    for (int i=0; i<5; i++) {
        
        UIButton *holeButton = [self.buttonArray objectAtIndex:i];
        [holeButton setTitle:[mark objectAtIndex:i]
                    forState:UIControlStateNormal];
        [holeButton setTitleColor:[UIColor whiteColor]
                         forState:UIControlStateNormal];
        [holeButton setBackgroundImage:[UIImage imageNamed:@"Hole.png"]
                              forState:UIControlStateNormal];
    }
    
    rndSeed = [[NSDate date] timeIntervalSinceDate:self.startTime];
    rndNum = ((int)rndSeed + rand()) % 5;
    huntButtonNo = rndNum;
    
    [[buttonArray objectAtIndex:rndNum] setTitle:@"X"
    forState:UIControlStateNormal];
    [[buttonArray objectAtIndex:rndNum] setBackgroundImage:catch forState:UIControlStateNormal];
}


- (void) rankUpdate
{
    int *S1,*S2,*S3;
    NSString *score;
    score = [NSString stringWithFormat:@"%5.2f", elapTime];
    
    self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elapTime];
    elapTime = 0; // reset
    if ([self.currentPlayer.text isEqualToString:self.name1.currentTitle]) {
        if( S1 > elapsedTime){
            score1.text = score;
        }
    }
    else if ([self.currentPlayer.text isEqualToString:self.name2.currentTitle]) {
        if(S2 > elapsedTime){
            score2.text = score;
        }
    }
    else if ([self.currentPlayer.text isEqualToString:self.name3.currentTitle]) {
        if(S3 > elapsedTime){
            score3.text = score;
        }
    }
}


- (IBAction)holeButtonPressed:(id)sender {
    
    if (numOfFrog) // Game is not over !
    {
        if ([[sender currentTitle] isEqualToString:@"X"])
        {
            numOfFrog -= 1;
            if (numOfFrog <= 0)
            {
                numOfFrog = 0;
                elapTime = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [self rankUpdate];
                
            }
            else
            {
                elapTime = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [sender setTitle:[NSString stringWithFormat:@"%d",huntButtonNo]
                        forState:UIControlStateNormal];
                self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elapTime];
                [self buttonUpdate];
                
               if((sender = [UIImage imageNamed:@"catch.png"])){
                        AudioServicesPlayAlertSound(catchBeep);
                    }
               
                }
            }
            self.frogCount.text = [NSString stringWithFormat:@"%d",numOfFrog];
        }
        
}



- (IBAction)player1Start:(id)sender {
    if (!numOfFrog)  // Game Over
    {
        self.currentPlayer.text = self.name1.currentTitle;
        self.startTime = [NSDate date]; // get current time
        [self nextGame];
        [self buttonUpdate];
    }
}

- (IBAction)player2Start:(id)sender {
    if (!numOfFrog)  // Game Over
    {
        self.currentPlayer.text = self.name2.currentTitle;
        self.startTime = [NSDate date]; // get current time
        [self nextGame];
        [self buttonUpdate];
    }
}

- (IBAction)player3Start:(id)sender {
    if (!numOfFrog)  // Game Over
    {
        self.currentPlayer.text = self.name3.currentTitle;
        self.startTime = [NSDate date]; // get current time
        [self nextGame];
        [self buttonUpdate];
    }
}


@end
