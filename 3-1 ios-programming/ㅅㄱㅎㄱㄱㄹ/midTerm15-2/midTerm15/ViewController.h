//
//  ViewController.h
//  midTerm15
//
//  Created by 502-07 on 02/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *frogImgArray;
    int frogIndex[4];
    int result2[4];
}
@property (weak, nonatomic) IBOutlet UILabel *puzzle;


@property (weak, nonatomic) IBOutlet UIImageView *img0;
@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;

- (IBAction)swapH1:(id)sender;
- (IBAction)swapH2:(id)sender;
- (IBAction)swapV1:(id)sender;
- (IBAction)swapV2:(id)sender;


-(int)getRandomFrog;
@end

