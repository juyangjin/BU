//
//  AppDelegate.h
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
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

