//
//  ViewController.h
//  Beep
//
//  Created by 502-07 on 25/04/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolBox.h>

@interface ViewController : UIViewController
{
    SystemSoundID catchBeep;
    SystemSoundID wrongBeep;
}

- (IBAction)playCatchBeep:(id)sender;
- (IBAction)playWrongHoleBeep:(id)sender;


@end

