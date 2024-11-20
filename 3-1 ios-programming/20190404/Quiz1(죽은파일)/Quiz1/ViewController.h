//
//  ViewController.h
//  Quiz1
//
//  Created by 502-01 on 04/04/2019.
//  Copyright © 2019 502-01. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *oxExams;

@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *exam;
@property (weak, nonatomic) IBOutlet UILabel *num;
@property (weak, nonatomic) IBOutlet UILabel *OX;

-(IBAction)oButtonPressed:(id)sender;
-(IBAction)xButtonPressed:(id)sender;

-(void) updateExam;
@end

