//
//  AppDelegate.h
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property NSString *dbMusic;
@property NSString *dbPath;
@property NSMutableArray *dbData;
@property BOOL isFirstAccess;

-(void)readMdataFromDB;

@end

