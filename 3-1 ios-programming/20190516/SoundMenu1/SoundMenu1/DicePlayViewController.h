//
//  DicePlayViewController.h
//  SoundMenu1
//
//  Created by 502-08 on 16/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

NS_ASSUME_NONNULL_BEGIN

@interface DicePlayViewController : UIViewController
{
    SystemSoundID Boing;
    SystemSoundID Indigo;
    SystemSoundID Laugh;
    SystemSoundID Monkey;
    SystemSoundID Single;
    SystemSoundID Uh;
}

@property (weak, nonatomic) IBOutlet UILabel *result;
@property int count1,count2,count3,count4,count5,count6;

- (IBAction)Play:(id)sender;
@property NSString *text;
@property (weak, nonatomic) IBOutlet UILabel *cellNo;

@end

NS_ASSUME_NONNULL_END
