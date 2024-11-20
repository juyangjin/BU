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

@property (weak, nonatomic) IBOutlet UIImageView *img0;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;
@property (weak, nonatomic) IBOutlet UIImageView *img4;
@property (weak, nonatomic) IBOutlet UIImageView *img5;
@property (weak, nonatomic) IBOutlet UIImageView *img6;
@property (weak, nonatomic) IBOutlet UIImageView *img7;
@property (weak, nonatomic) IBOutlet UIImageView *img8;

- (IBAction)btnup:(id)sender;
- (IBAction)btndown:(id)sender;
- (IBAction)btnL:(id)sender;
- (IBAction)btnR:(id)sender;

-(int)getRandomGame;

@end

NS_ASSUME_NONNULL_END
