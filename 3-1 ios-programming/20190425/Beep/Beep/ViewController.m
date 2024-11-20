//
//  ViewController.m
//  Beep
//
//  Created by 502-07 on 25/04/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *path;
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Boing" ofType:@"aiff"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)path, &catchBeep);
    path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Indigo" ofType:@"aiff"]];
       AudioServicesCreateSystemSoundID((__bridge CFURLRef)path, &wrongBeep);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)playCatchBeep:(id)sender {
        AudioServicesPlayAlertSound(catchBeep);
}

- (IBAction)playWrongHoleBeep:(id)sender {
    AudioServicesPlayAlertSound(wrongBeep);
}
@end
