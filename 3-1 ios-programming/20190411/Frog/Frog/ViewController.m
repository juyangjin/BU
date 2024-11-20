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

@synthesize buttonArray;
@synthesize mark;

@synthesize startTime;
@synthesize elapsedTime;
@synthesize frogCount;
@synthesize bestTime;
@synthesize order;

@synthesize displayFrogCount;
@synthesize displayInterval;
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize bestLapTime;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    buttonArray = [NSArray arrayWithObjects:button1, button2, button3, button4, button5, nil];
    
    mark = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",nil];
    
    order = 0;
    
    bestTime = 1000.0;
    
    [self.button1 setTitle:[mark objectAtIndex:0] forState:UIControlStateNormal];
    
    [self.button2 setTitle:[mark objectAtIndex:1] forState:UIControlStateNormal];

    [self.button3 setTitle:[mark objectAtIndex:2] forState:UIControlStateNormal];
    
    [self.button4 setTitle:[mark objectAtIndex:3] forState:UIControlStateNormal];
    
    [self.button5 setTitle:[mark objectAtIndex:4] forState:UIControlStateNormal];
    
}

- (void)buttonUpdate
{
    int rndNum;
    
    rndNum = rand() % 5;
    [[buttonArray objectAtIndex:rndNum] setTitle:@"X" forState:UIControlStateNormal];
}

- (void)rankUpdate{
    NSString *score;
    
    score = [NSString stringWithFormat:@"%5.2f", elapsedTime];
    self.displayInterval.text = score;
    
    if(bestTime>elapsedTime){
        bestTime = elapsedTime;
        self.bestLapTime.text = score;
    }

}

- (void)nextGame{
    frogCount = 10;
    
    if(order==0)
    {
        order = 1;
        self.Player.text = @"진주양";
    }
    else if (order==1)
    {
        order = 2;
        self.Player.text = @"박보윤";
    }
    else if (order==2)
    {
        order = 0;
        self.Player.text = @"박해리";
    }
    
    self.displayFrogCount.text = [NSString stringWithFormat:@"%d", frogCount];
    self.displayInterval.text = @"0";
    
    [self.button1 setTitle:[mark objectAtIndex:0] forState:UIControlStateNormal];
    [self.button2 setTitle:[mark objectAtIndex:1] forState:UIControlStateNormal];
    [self.button3 setTitle:[mark objectAtIndex:2] forState:UIControlStateNormal];
    [self.button4 setTitle:[mark objectAtIndex:3] forState:UIControlStateNormal];
    [self.button5 setTitle:[mark objectAtIndex:4] forState:UIControlStateNormal];
}

- (IBAction)pressStart:(id)sender {
    if (!frogCount) //if frogCount equals 0, Game Over
    {
        self.startTime = [NSDate date]; //get current time
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
            frogCount -= 1;
            if (frogCount <= 0)
            {
                frogCount = 0;
                elapsedTime = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [self rankUpdate];
            }
            else
            {
                elap = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [sender setTitle:[mark objectAtIndex:[buttonArray indexOfObject:sender]] forState:UIControlStateNormal];
                self.displayInterval.text = [NSString stringWithFormat:@"%5.2f",elap];
                [self buttonUpdate];
            }
            self.displayFrogCount.text = [NSString stringWithFormat:@"%d",frogCount];
        }
      }
  }

        


@end
