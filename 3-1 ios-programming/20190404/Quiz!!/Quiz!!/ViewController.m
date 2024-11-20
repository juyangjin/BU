//
//  ViewController.m
//  Quiz!!
//
//  Created by 502-11 on 17/04/2019.
//  Copyright © 2019 502-11. All rights reserved.
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
    
    NSString *Q01 = @"동물의 왕은?";
    NSString *Q02 = @"올해는 몇년인가?";
    NSString *Q03 = @"3월의 탄생석은?";
    NSString *Q04 = @"상어는 어떻게 잘까?";
    NSString *Q05 = @"옛날에 인어로 착각했던 해양생물은?";
   
    
    self.score.text= [NSString stringWithFormat:@"%d", score];
    self.Q = [NSArray arrayWithObjects:Q01, Q02, Q03, Q04, Q05, nil];
    
     UIImage *f0 = [UIImage imageNamed:@"0.png"];
     UIImage *f1 = [UIImage imageNamed:@"1.png"];
     UIImage *f2 = [UIImage imageNamed:@"2.png"];
     UIImage *f3 = [UIImage imageNamed:@"3.png"];
     UIImage *f4 = [UIImage imageNamed:@"4.png"];
     UIImage *f5 = [UIImage imageNamed:@"5.png"];
     UIImage *f6 = [UIImage imageNamed:@"6.png"];
     UIImage *f7 = [UIImage imageNamed:@"7.png"];
     UIImage *f8 = [UIImage imageNamed:@"8.png"];
     UIImage *f9 = [UIImage imageNamed:@"9.png"];
     UIImage *f10 = [UIImage imageNamed:@"10.png"];
    
    self.fingerimage =[NSArray arrayWithObjects:f0, f1, f2, f3,f4, f5, f6, f7, f8, f9, f10 , nil];
    
    [self updateQuiz];
}

-(void)updateQuiz{
    int Num = 0;
    
    self.num.text = [NSString stringWithFormat:@"%d",Num+1];
    self.exam.text = [self.Q objectAtIndex:Num];
    [[Q1 objecetAt]]
}

@synthesize score;
@synthesize num;
@synthesize exam;


- (IBAction)Q1:(id)sender {
    NSString *Q1;
    TitleforState:@"사자";
    int score =0;
    int hand = 0;
    if(!gameover){
        switch([self.num.text intValue]){
            case 1:
                score = [self.score.text intValue]+10;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"2016";
            case 2:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                 self.title = @"다이아몬드";
            case 3:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                 self.title = @"누워서";
            case 4:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                 self.title = @"듀공";
            case 5:
                score = [self.score.text intValue]+10;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                 self.title = @"";
             break;
        }
        [self updateQuiz];
        if (score == MAX_COUNT){
            gameover=1;
        }
    }
}

- (IBAction)Q2:(id)sender {
    self.title =@"고양이";
    int score =0;
    int hand = 0;
    if(!gameover){
        switch([self.num.text intValue]){
            case 1:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"2017";
            case 2:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"아쿠아마린";
            case 3:
                score = [self.score.text intValue]+10;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"앉아서";
            case 4:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"범고래";
            case 5:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"";
                break;
        }
        [self updateQuiz];
        if (score == MAX_COUNT){
            gameover=1;
        }
    }
}

- (IBAction)Q3:(id)sender {
    self.title =@"벼룩";
    int score =0;
    int hand = 0;
    if(!gameover){
        switch([self.num.text intValue]){
            case 1:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"2019";
            case 2:
                score = [self.score.text intValue]+10;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"루비";
            case 3:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"헤엄치면서";
            case 4:
                score = [self.score.text intValue]+10;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"수염고래";
            case 5:
                score = [self.score.text intValue]-5;
                self.score.text = [NSString stringWithFormat:@"%d",score];
                hand = score / 10;
                self.image.image=[self.fingerimage objectAtIndex:hand];
                self.title = @"";
                break;
        }
        [self updateQuiz];
        if (score == MAX_COUNT){
            gameover=1;
        }
    }
}

@end
