//
//  ViewController.m
//  FrogCatcherPro
//
//  Created by bon506-08 on 2017. 10. 25..
//  Copyright © 2017년 JNH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize buttonArray;
@synthesize playerArray;
@synthesize frog, mark,name;
@synthesize startTime;
@synthesize elapTime;
@synthesize numOfFrog;
@synthesize huntButtonNo;
@synthesize catch;

@synthesize bestTime1;

@synthesize backButton;
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
    buttonArray = [NSArray arrayWithObjects:holeButton1,holeButton2,holeButton3,
                   holeButton4,holeButton5, nil];
    playerArray = [NSArray arrayWithObjects:name1,name2,name3, nil];
    mark=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",nil];
    name=[NSArray arrayWithObjects:@"Mike",@"Tom",@"Jane", nil];
    catch=[UIImage imageNamed:@"catch.png"];
    
    for(int i=0; i<5; i++){
        UIButton *holeButton = [self.buttonArray objectAtIndex:i];
        [holeButton setTitle:[mark objectAtIndex:i]forState:UIControlStateNormal];
        [holeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [holeButton setBackgroundImage:[UIImage imageNamed:@"hole.png"] forState:UIControlStateNormal];
    }
    numOfFrog = 0;
    bestTime1 = 99999;
    
}
-(IBAction)playerStart:(id)sender{
    if(!numOfFrog)
    {
        if([[sender currentTitle]isEqualToString:@"Mike"])
        {
            self.currentPlayer.text = self.name1.currentTitle;
        }
        else if([[sender currentTitle]isEqualToString:@"Tom"])
        {
            self.currentPlayer.text = self.name2.currentTitle;
        }
        else if([[sender currentTitle]isEqualToString:@"Jane"])
        {
            self.currentPlayer.text = self.name3.currentTitle;
        }
        self.startTime = [NSDate date];
        [self nextGame];
        [self buttonUpdate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonUpdate{
    int rndNum;
    NSTimeInterval rndSeed;
    for (int i=0; i<5; i++) {
        UIButton *holeButton = [self.buttonArray objectAtIndex:i];
        [holeButton setTitle:[mark objectAtIndex:i]
                    forState:UIControlStateNormal];
        [holeButton setTitleColor:[UIColor whiteColor]
                         forState:UIControlStateNormal];
        [holeButton setBackgroundImage:[UIImage imageNamed:@"hole.png"]
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

-(void) rankUpdate
{
    NSString *score_1;
    NSString *score_2;
    NSString *score_3;
    
    
    if ([self.currentPlayer.text isEqualToString:self.name1.currentTitle]){
        if(elapTime<bestTime1)
            bestTime1=elapTime;
        score_1 = [NSString stringWithFormat:@"%5.2f",bestTime1];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",bestTime1];
        elapTime = 0;
        self.score1.text = score_1;
        
    }
    
    else if ([self.currentPlayer.text isEqualToString:self.name2.currentTitle]){
        if(elapTime<bestTime1)
            bestTime1=elapTime;
        score_2 = [NSString stringWithFormat:@"%5.2f",bestTime1];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",bestTime1];
        elapTime = 0;
        self.score2.text = score_2;
        
    }
    else if ([self.currentPlayer.text isEqualToString:self.name3.currentTitle]){
        if(elapTime<bestTime1)
            bestTime1=elapTime;
        score_3 = [NSString stringWithFormat:@"%5.2f",bestTime1];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",bestTime1];
        elapTime = 0;
        self.score3.text = score_3;
        
    }
}

- (void) nextGame{
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




- (IBAction)backButton:(id)sender {
}
- (IBAction)backButtonPressed:(id)sender {
}



- (IBAction)holeButtonPressed:(id)sender {
    NSTimeInterval elap;
    
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
                elap = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [sender setTitle:[NSString stringWithFormat:@"%d",huntButtonNo]
                        forState:UIControlStateNormal];
                self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elap];
                [self buttonUpdate];
            }
            self.frogCount.text = [NSString stringWithFormat:@"%d",numOfFrog];
        }
    }
}
@end
