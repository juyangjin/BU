//
//  ViewController.h
//  NameCard
//
//  Created by 502-02 on 14/03/2019.
//  Copyright © 2019 502-02. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Name;
@property (weak, nonatomic) IBOutlet UILabel *STNumber;
@property (weak, nonatomic) IBOutlet UIImageView *Photo;

- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;

@end

