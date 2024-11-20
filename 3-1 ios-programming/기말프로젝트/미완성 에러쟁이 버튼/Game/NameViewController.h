//
//  NameViewController.h
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NameViewController : UIViewController
{
    NSArray *gameImgArray;
    int gameIndex[9];
    int result2[9];
}

@property NSString *name;
@property NSString *no;

@property (weak, nonatomic) IBOutlet UILabel *game;

@property (weak, nonatomic) IBOutlet UILabel *ncName;
@property (weak, nonatomic) IBOutlet UILabel *ncNo;

@property (weak, nonatomic) IBOutlet UIButton *img0;
@property (weak, nonatomic) IBOutlet UIButton *img1;
@property (weak, nonatomic) IBOutlet UIButton *img2;
@property (weak, nonatomic) IBOutlet UIButton *img3;
@property (weak, nonatomic) IBOutlet UIButton *img4;
@property (weak, nonatomic) IBOutlet UIButton *img5;
@property (weak, nonatomic) IBOutlet UIButton *img6;
@property (weak, nonatomic) IBOutlet UIButton *img7;
@property (weak, nonatomic) IBOutlet UIButton *img8;

- (IBAction)btn0:(id)sender;
- (IBAction)btn1:(id)sender;
- (IBAction)btn2:(id)sender;
- (IBAction)btn3:(id)sender;
- (IBAction)btn4:(id)sender;
- (IBAction)btn5:(id)sender;
- (IBAction)btn6:(id)sender;
- (IBAction)btn7:(id)sender;
- (IBAction)btn8:(id)sender;

-(int)getRandomGame;

@end

NS_ASSUME_NONNULL_END
