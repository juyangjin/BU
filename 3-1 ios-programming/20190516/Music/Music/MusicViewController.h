//
//  MusicViewController.h
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MusicViewController : UIViewController

@property NSString *title1;
@property NSString *sing;
@property NSString *song;

@property (weak, nonatomic) IBOutlet UILabel *mtitle1;
@property (weak, nonatomic) IBOutlet UILabel *msing;
@property (weak, nonatomic) IBOutlet UILabel *msong;


@end

NS_ASSUME_NONNULL_END
