//
//  ViewController.m
//  NameCard
//
//  Created by 502-02 on 14/03/2019.
//  Copyright © 2019 502-02. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize Name;
@synthesize STNumber;
@synthesize Photo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)Button1:(id)sender {
    Name.text = @"진주양";
    STNumber.text = @"20173555";
    Photo.image = [UIImage imageNamed:@"777.jpg"];
    
}

- (IBAction)Button2:(id)sender {
    Name.text = @"박보윤";
    STNumber.text = @"20181965";
    Photo.image = [UIImage imageNamed:@"222.jpeg"];
    
}
@end
