//
//  ViewController.m
//  QUIZ1
//
//  Created by 502-16 on 04/04/2019.
//  Copyright © 2019 502-16. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    gameover = 0;
    int score = 0;
    
    NSString *oxQuiz1=@"호랑이는 동물이다";
    NSString *oxQuiz2=@"사과는 채소이다";
    NSString *oxQuiz3=@"사자는 동물의 왕이다";
    NSString *oxQuiz4=@"토마토는 과일이다";
    NSString *oxQuiz5=@"이번년도는 2019년이다";
    //NSString *oxQuiz6=@"토끼는 다리가 4개이다";
    //NSString *oxQuiz7=@"포도는 채소이다";
    //NSString *oxQuiz8=@"벚꽃은 겨울에 핀다";
    //NSString *oxQuiz9=@"눈은 겨울에 온다";
    //NSString *oxQuiz10=@"1년은 13달이다";
    
    self.score.text = [NSString stringWithFormat:@"%d", score];
    self.oxQuizs = [NSArray arrayWithObjects:oxQuiz1, oxQuiz2, oxQuiz3, oxQuiz4, oxQuiz5 ,nil];
    
    UIImage *finger1 = [UIImage imageNamed:@"finger1.png"];
    UIImage *finger2 = [UIImage imageNamed:@"finger2.png"];
    UIImage *finger3 = [UIImage imageNamed:@"finger3.png"];
    UIImage *finger4 = [UIImage imageNamed:@"finger4.png"];
    UIImage *finger5 = [UIImage imageNamed:@"finger5.png"];
    UIImage *finger6 = [UIImage imageNamed:@"finger6.png"];
    UIImage *finger7 = [UIImage imageNamed:@"finger7.png"];
    UIImage *finger8 = [UIImage imageNamed:@"finger8.png"];
    UIImage *finger9 = [UIImage imageNamed:@"finger9.png"];
    UIImage *finger10 = [UIImage imageNamed:@"finger10.png"];
    UIImage *finger11= [UIImage imageNamed:@"finger11.png"];
    
    self.fingerImage=[NSArray arrayWithObjects:finger1, finger2, finger3, finger4, finger5, finger6, finger7, finger8, finger9, finger10, finger11, nil];
    
    
    
    [self updateQuiz];
}

-(void) updateQuiz{
    int rndNum = rand() % 5;
    
    self.quiznumber.text = [NSString stringWithFormat:@"%d", rndNum+1];
    self.quiz.text=[self.oxQuizs objectAtIndex:rndNum];
}

@synthesize score;
@synthesize quiznumber;
@synthesize quiz;

- (IBAction)ok:(id)sender {
     int score=0;
    int hand = 0;
    if(!gameover){
    switch ([self.quiznumber.text intValue]) {
        case 1:
        case 3:
        case 5:
            score = [self.score.text intValue] + 10;
            self.score.text = [NSString stringWithFormat:@"%d", score];
            hand = score / 10;
            self.finger.image=[self.fingerImage objectAtIndex:hand];
            break;
        case 2:
        case 4:
            score = [self.score.text intValue] - 5;
            self.score.text = [NSString stringWithFormat:@"%d", score];
            hand = score / 10;
            self.finger.image=[self.fingerImage objectAtIndex:hand];
            break;
        
            
    }
    [self updateQuiz];
        if(score == MAX_COUNT){
            gameover=1;
        }
    }
}

- (IBAction)no:(id)sender {
     int score=0;
    int hand = 0;
    if(!gameover){
   switch ([self.quiznumber.text intValue]) {
       case 2:
       case 4:
           score = [self.score.text intValue] + 10;
           self.score.text = [NSString stringWithFormat:@"%d", score];
           hand = score / 10;
           self.finger.image=[self.fingerImage objectAtIndex:hand];
    break;
       case 1:
       case 3:
       case 5:
           score = [self.score.text intValue] - 5;
           self.score.text = [NSString stringWithFormat:@"%d", score];
           hand = score / 10;
           self.finger.image=[self.fingerImage objectAtIndex:hand];
    break;
   }
        [self updateQuiz];
        if(score == MAX_COUNT){
           gameover=1;
        }
    }
}
@end
