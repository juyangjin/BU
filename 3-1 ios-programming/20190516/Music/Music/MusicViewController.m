//
//  MusicViewController.m
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "MusicViewController.h"

@interface MusicViewController ()

@end

@implementation MusicViewController
@synthesize title1, sing, song;
@synthesize mtitle1, msing, msong;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mtitle1.text = self.title1;
    msing.text = self.sing;
    msong.text = self.song;
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
