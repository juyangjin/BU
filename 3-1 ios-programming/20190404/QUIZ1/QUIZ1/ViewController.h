//
//  ViewController.h
//  QUIZ1
//
//  Created by 502-16 on 04/04/2019.
//  Copyright © 2019 502-16. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MAX_COUNT 100
@interface ViewController : UIViewController
{
    int gameover;
    
}
@property NSArray *oxQuizs;
@property NSArray *quizsols;
@property NSArray *fingerImage;


@property (weak, nonatomic) IBOutlet UIImageView *finger;

@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *quiznumber;
@property (weak, nonatomic) IBOutlet UILabel *quiz;
- (IBAction)ok:(id)sender;
- (IBAction)no:(id)sender;

-(void) updateQuiz;

@end

