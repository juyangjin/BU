//
//  NameCardViewController.m
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import "NameCardViewController.h"

@interface NameCardViewController ()

@end

@implementation NameCardViewController

@synthesize name, no, tel;
@synthesize ncName, ncNo, ncTel;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    ncName.text=self.name;
    ncNo.text=self.no;
    ncTel.text=self.tel;
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
