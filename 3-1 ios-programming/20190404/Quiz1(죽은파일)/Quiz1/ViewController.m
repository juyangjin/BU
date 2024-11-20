//
//  ViewController.m
//  Quiz1
//
//  Created by 502-01 on 04/04/2019.
//  Copyright © 2019 502-01. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

NSString *oxQuiz1 = @"Is Steve Jobs a singer?";
NSString *oxQuiz2 = @"Is apple a fruit?";
NSString *oxQuiz3 = @"Is tomato a fruit?";
NSString *oxQuiz4 = @"Is lion a king of animals?";
NSString *oxQuiz5 = @"Is tiger a queen of animals?";
NSString *oxQuiz6 = @"Are you using Iphone?";
NSString *oxQuiz7 = @"Are you using Galaxy?";
NSString *oxQuiz8 = @"Is today Monday?";
NSString *oxQuiz9 = @"Is today Tuseday?";
NSString *oxQuiz0 = @"Is today Thursday?";
    //아이폰사용자, 오늘은 목요일.
    
    self.oxExams = [NSArray arrayWithObjects : oxQuiz1, oxQuiz2, oxQuiz3, oxQuiz4, oxQuiz5, oxQuiz6, oxQuiz7, oxQuiz8, oxQuiz9, oxQuiz0, nil];
    
    [self updateExam];
    
}
    -(void) updateExam {
        int rndNum = rand() %5;
        self.num.text=[NSString stringWithFormat : @"%d",rndNum+1];
        self.exam.text = [self.oxExams objectAtIndex:rndNum];
    }


-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
-(IBAction)oButtonPressed:(id)sender{
    int score;
    switch ([self.num.text intValue]){
            //True
        case 2:
        case 4:
        case 6:
        case 0:
            score = [self.score.text intValue]+10;
            self.score.text=[NSString stringWithFormat:@"%d", score];
            break;
            //False
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 9:
            score = [self.score.text intValue]-10;
            self.score.text = [NSString stringWithFormat:@"%d", score];
            break;
        default:
            break;
    }
   
    if(score==100)
    {
        self.OX.text = @"YOU WIN";
    }
     [self updateExam];
    }


-(IBAction)xButtonPressed:(id)sender{
    
    int score;
    switch ([self.num.text intValue]){
            //True
        case 2:
        case 4:
        case 6:
        case 0:
            score = [self.score.text intValue]+10;
            self.score.text=[NSString stringWithFormat:@"%d", score];
            break;
            //False
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 9:
            score = [self.score.text intValue]-10;
            self.score.text = [NSString stringWithFormat:@"%d", score];
            break;
        default:
            break;
    }
    
    if(score==100)
    {
       self.OX.text= @"YOU WIN";
    }
    [self updateExam];
}




@end
