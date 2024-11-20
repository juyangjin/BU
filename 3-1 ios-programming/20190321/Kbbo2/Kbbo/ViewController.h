//
//  ViewController.h
//  Kbbo
//
//  Created by 502-20 on 21/03/2019.
//  Copyright © 2019 502-20. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int rnAlice;
    int rnBob;
}

@property IBOutlet UIImageView *faceAlice;
@property IBOutlet UIImageView *faceBob;

@property IBOutlet UIImageView *kbboAlice;
@property IBOutlet UIImageView *kbboBob;



- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;

@end

