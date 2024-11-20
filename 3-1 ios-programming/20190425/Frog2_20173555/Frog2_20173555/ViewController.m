//
//  ViewController.m
//  Frog2_20173555
//
//  Created by YANG on 28/04/2019.
//  Copyright © 2019 YANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize buttonArray;
@synthesize startArray;
@synthesize frog, mark, name;
@synthesize startTime;
@synthesize numOfFrog;
@synthesize huntButtonNo;
@synthesize catch;
@synthesize S1;
@synthesize S2;
@synthesize S3;

@synthesize currentPlayer;
@synthesize frogCount;
@synthesize elapsedTime;
@synthesize elapTime;
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
     // Do any additional setup after loading the view, typically from a nib.
    NSURL *path;
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Boing" ofType:@"aiff"]];
            AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&catchBeep);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Indigo" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&wrongBeep);
    
     buttonArray = [NSArray arrayWithObjects:button1,button2,button3,
                    button4,button5, nil];
     startArray = [NSArray arrayWithObjects:name1,name2,name3, nil];
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
    S1 = 1000;
    S2 = 1000;
    S3 = 1000;
}
- (IBAction)Start:(id)sender {
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
    NSString *score11;
    NSString *score22;
    NSString *score33;
    
    
    if ([self.currentPlayer.text isEqualToString:self.name1.currentTitle]){
        if(elapTime<S1)
            S1=elapTime;
        score11 = [NSString stringWithFormat:@"%5.2f",S1];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",S1];
        elapTime = 0;
        self.score1.text = score11;
        
    }
    
    else if ([self.currentPlayer.text isEqualToString:self.name2.currentTitle]){
        if(elapTime<S2)
            S2=elapTime;
        score22 = [NSString stringWithFormat:@"%5.2f",S2];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",S2];
        elapTime = 0;
        self.score2.text = score22;
        
    }
    else if ([self.currentPlayer.text isEqualToString:self.name3.currentTitle]){
        if(elapTime<S3)
            S3=elapTime;
        score33 = [NSString stringWithFormat:@"%5.2f",S3];
        
        self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",S3];
        elapTime = 0;
        self.score3.text = score33;
        
    }
}


- (IBAction)holebutton:(id)sender {
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
                AudioServicesPlayAlertSound(catchBeep);
            elap = [[NSDate date] timeIntervalSinceDate:self.startTime];
                [sender setTitle:[NSString stringWithFormat:@"%d",huntButtonNo]
                        forState:UIControlStateNormal];
                self.elapsedTime.text = [NSString stringWithFormat:@"%5.2f",elap];
                [self buttonUpdate];
            }
            self.frogCount.text = [NSString stringWithFormat:@"%d",numOfFrog];
        }
        else{
            AudioServicesPlayAlertSound(wrongBeep);
        }
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
@end
