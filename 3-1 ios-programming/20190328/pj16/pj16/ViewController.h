//
//  ViewController.h
//  pj16
//
//  Created by 502-02 on 28/03/2019.
//  Copyright © 2019 502-02. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MAX_COUNT 10

@interface ViewController : UIViewController
{
    int gainsCounter;
    int twinsCounter;
    int bearsCounter;
}

@property (weak, nonatomic) IBOutlet UILabel *giants;
@property (weak, nonatomic) IBOutlet UILabel *twins;
@property (weak, nonatomic) IBOutlet UILabel *bears;
@property (weak, nonatomic) IBOutlet UILabel *result;


- (IBAction)clickGiants:(id)sender;
- (IBAction)clickTwins:(id)sender;
- (IBAction)clickBears:(id)sender;

@end

