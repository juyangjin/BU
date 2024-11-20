//
//  ViewController.m
//  Frog
//
//  Created by 502-14 on 11/04/2019.
//  Copyright © 2019 JIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//Instance Variable
@synthesize buttonArray;
@synthesize frog, mark;
@synthesize startTime;
@synthesize elapTime;
@synthesize numOfFrog;
@synthesize huntButtonNo;
@synthesize catch;

//IBOutlet
@synthesize backButton;
@synthesize CurrentPlayer;
@synthesize frogCount;
@synthesize elapsedTime;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    buttonArray = [NSArray arrayWithObjects:button1, button2, button3, button4, button5, nil];
    
    UIImage *image1 = [UIImage imageNamed:@"frog1.png"];
    UIImage *image2 = [UIImage imageNamed:@"frog2.png"];
    UIImage *image3 = [UIImage imageNamed:@"frog3.png"];
    UIImage *image4 = [UIImage imageNamed:@"frog4.png"];
    UIImage *image5 = [UIImage imageNamed:@"frog5.png"];
    
    
    frog = [NSArray arrayWithObjects:image1,image2,image3,image4,image5,nil];
    mark = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",nil];
    catch = [UIImage imageNamed:@"catch.png"];
    
    for (int i=0; i<5; i++) {
        UIButton *button = [self.buttonArray objectAtIndex:i];
        [button setTitle:[mark objectAtIndex:i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"Hole.png"]forState:UIControlStateNormal];
    }
    numOfFrog = 0;
    
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
    [[buttonArray objectAtIndex:rndNum] setBackgroundImage:catch
                                                  forState:UIControlStateNormal];
}

- (void)rankUpdate{
    NSString *score;
    score = [NSString stringWithFormat:@"%5.2f", elapTime];
    self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elapTime];
    elapTime = 0; // reset
    if ([self.CurrentPlayer.text isEqualToString:self.name1.currentTitle]) {
        self.score1.text = score;
    }
    else if ([self.CurrentPlayer.text isEqualToString:self.name2.currentTitle]) {
        self.score2.text = score;
    }
    else if ([self.CurrentPlayer.text isEqualToString:self.name3.currentTitle]) {
        self.score3.text = score;
    }
}

- (void)nextGame{
    numOfFrog = 10;
    
    self.frogCount.text = [NSString stringWithFormat:@"%d", numOfFrog];
    self.elapsedTime.text = @"0";
    
    for(int i=0; i<5; i++){
        UIButton *button = [self.buttonArray objectAtIndex:i];
        [button setTitle:[mark objectAtIndex:i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
    }
    
}



- (IBAction)backButton:(id)sender {
}

- (IBAction)p1:(id)sender {
    if(!numOfFrog)
    {
        self.CurrentPlayer.text = self.name1.currentTitle;
        self.startTime = [NSDate date];
        [self nextGame];
        [self buttonUpdate];
    }
}

- (IBAction)p2:(id)sender {
    if (!numOfFrog) {
        self.CurrentPlayer.text = self.name2.currentTitle;
        self.startTime = [NSDate date];
        [self nextGame];
        [self buttonUpdate];
    }
    
}

- (IBAction)p3:(id)sender {
    if (!numOfFrog) {
        self.CurrentPlayer.text = self.name3.currentTitle;
        self.startTime = [NSDate date];
         [self nextGame];
         [self buttonUpdate];
    }
}

- (IBAction)pressButton:(id)sender {
    NSTimeInterval elap;
    
    if(frogCount) //Game is not over!
    {
         if ([[sender currentTitle] isEqualToString:@"X"])
        {
            numOfFrog -= 1;
            if (numOfFrog <= 0)
            {
                numOfFrog = 0;
                elap = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [self rankUpdate];
            }
            else
            {
                elap = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [sender setTitle:[NSString stringWithFormat:@"%d",huntButtonNo] forState:UIControlStateNormal];
                self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elap];
                [self buttonUpdate];
            }
            self.frogCount.text = [NSString stringWithFormat:@"%d",numOfFrog];
        }
      }
  }

@end
