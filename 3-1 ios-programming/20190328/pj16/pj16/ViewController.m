//
//  ViewController.m
//  pj16
//
//  Created by 502-02 on 28/03/2019.
//  Copyright © 2019 502-02. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize giants,twins,bears,result;

- (void)viewDidLoad {
    [super viewDidLoad];
    gainsCounter = 0;
    twinsCounter = 0;
    bearsCounter = 0;
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)clickGiants:(id)sender {
    gainsCounter++;
    self.giants.text = [NSString stringWithFormat:@"%d",gainsCounter];
    int sum = 0;
    sum = gainsCounter+twinsCounter+bearsCounter;
    printf("sum = %d", sum);
    if(sum == 10)
    {
        if(gainsCounter >= twinsCounter)
        {
            if(gainsCounter >= bearsCounter)
            {
                  self.result.text = @"Giants";
            }
        }
    }
}

- (IBAction)clickTwins:(id)sender {
    twinsCounter++;
    self.twins.text = [NSString stringWithFormat:@"%d",twinsCounter];
     int sum = gainsCounter+twinsCounter+bearsCounter;
     if(sum == 10)
        {
            if(twinsCounter >= gainsCounter)
            {
                if(twinsCounter >= bearsCounter)
                {
                    self.result.text = @"Twins";
                }
            }
        }
}

- (IBAction)clickBears:(id)sender {
    bearsCounter++;
    self.bears.text = [NSString stringWithFormat:@"%d",bearsCounter];
     int sum = gainsCounter+twinsCounter+bearsCounter;
    if(sum == 10)
    {
        if(bearsCounter >= gainsCounter)
        {
            if(bearsCounter >= twinsCounter)
            {
                self.result.text = @"Bears";
            }
        }
       
    }
}

@end

