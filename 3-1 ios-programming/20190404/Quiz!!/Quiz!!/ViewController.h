//
//  ViewController.h
//  Quiz!!
//
//  Created by 502-11 on 17/04/2019.
//  Copyright © 2019 502-11. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MAX_COUNT 100

@interface ViewController : UIViewController
{
    int gameover;
}
@property NSArray *Q;
@property NSArray *Quizsols;
@property NSArray *fingerimage;

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *num;
@property (weak, nonatomic) IBOutlet UILabel *exam;


- (IBAction)Q1:(id)sender;
- (IBAction)Q2:(id)sender;
- (IBAction)Q3:(id)sender;
-(void) updateQuiz;
@end

