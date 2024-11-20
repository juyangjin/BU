//
//  ViewController.m
//  NameCard3
//
//  Created by YANG on 15/03/2019.
//  Copyright © 2019 YANG. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize name;
@synthesize number;
@synthesize photo;

- (IBAction)button:(UIButton *)sender {
    
    UIButton *button = (UIButton *)sender;
    
    
    if([button tag] == 0)
    {
        
        [button setTag:1];
        name.text = @"진주양";
        number.text = @"20173555";
        photo.image = [UIImage imageNamed:@"777.jpg"];
    }
    else if([button tag] == 1)
    {
        
        [button setTag:2];
        name.text = @"박보윤";
        number.text = @"20181965";
        photo.image = [UIImage imageNamed:@"222.jpeg"];
    }
}

@end

