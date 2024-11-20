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

@property NSString *name;
@property NSString *no;

@property (weak, nonatomic) IBOutlet UILabel *ncName;
@property (weak, nonatomic) IBOutlet UILabel *ncNo;

@end

NS_ASSUME_NONNULL_END
