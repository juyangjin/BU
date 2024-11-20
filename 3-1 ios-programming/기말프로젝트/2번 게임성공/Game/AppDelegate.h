//
//  AppDelegate.h
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property NSString *dbName;
@property NSString *dbPath;
@property NSMutableArray *dbData;
@property BOOL isFirstAccess;

-(void)readNCdataFromDB;


@end

