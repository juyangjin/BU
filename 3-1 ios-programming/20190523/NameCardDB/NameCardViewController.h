//
//  NameCardViewController.h
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NameCardViewController : UIViewController

@property NSString *name;
@property NSString *no;
@property NSString *tel;

@property (weak, nonatomic) IBOutlet UILabel *ncName;
@property (weak, nonatomic) IBOutlet UILabel *ncNo;
@property (weak, nonatomic) IBOutlet UILabel *ncTel;

@end

NS_ASSUME_NONNULL_END
