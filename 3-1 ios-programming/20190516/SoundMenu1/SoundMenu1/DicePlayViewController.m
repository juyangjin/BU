//
//  DicePlayViewController.m
//  SoundMenu1
//
//  Created by 502-08 on 16/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import "DicePlayViewController.h"

@interface DicePlayViewController ()

@end

@implementation DicePlayViewController

@synthesize count1,count2,count3,count4,count5,count6;
@synthesize text;
@synthesize cellNo;

- (void)viewDidLoad {
    [super viewDidLoad];
    count1 = 0;
    count2 = 0;
    count3 = 0;
    count4 = 0;
    count5 = 0;
    count6 = 0;
    // Do any additional setup after loading the view.
    NSURL *path;
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Boing" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Boing);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Indigo" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Indigo);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Laugh" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Laugh);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Monkey" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Monkey);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Single Click" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Single);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Uh oh" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Uh);
[self.cellNo setText:[NSString stringWithFormat:@"%@", self.text]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Play:(id)sender {
    if (([cellNo.text  isEqual: @"Boing"]))
    {
        AudioServicesPlayAlertSound(Boing);
         count1 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count1]];
    }
    if (([cellNo.text  isEqual: @"Indigo"]))
    {
        AudioServicesPlayAlertSound(Indigo);
         count2 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count2]];
    }
    if(([cellNo.text  isEqual: @"Laugh"]))
    {
        AudioServicesPlayAlertSound(Laugh);
         count3 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count3]];
    }
    if(([cellNo.text  isEqual: @"Monkey"]))
    {
        AudioServicesPlayAlertSound(Monkey);
         count4 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count4]];
    }
    if(([cellNo.text  isEqual: @"Single Click"]))
    {
        AudioServicesPlayAlertSound(Single);
         count5 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count5]];
    }
    if(([cellNo.text  isEqual: @"Uh oh"]))
    {
        AudioServicesPlayAlertSound(Uh);
         count6 += 1;
        [self.result setText:[NSString stringWithFormat:@"%d",count6]];
    }
    
}
@end
