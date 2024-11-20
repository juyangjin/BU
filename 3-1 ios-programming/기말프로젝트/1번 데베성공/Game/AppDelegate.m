//
//  AppDelegate.m
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "AppDelegate.h"
#import "NameTableViewController.h"
#import "NCData.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize dbName,dbPath,dbData,isFirstAccess;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.isFirstAccess = TRUE;
    
    self.dbName = @"Name.db";
    self.dbPath = @"/Users/a502-07/Downloads/Name.db";
    
    return YES;
}

-(void)readNCdataFromDB
{
    sqlite3 *database;
    
    if (self.isFirstAccess == TRUE)
    {
        self.dbData = [[NSMutableArray alloc] init];
        self.isFirstAccess = FALSE;
    }
    else
    {
        [self.dbData removeAllObjects];
    }
    
    if (sqlite3_open([self.dbPath UTF8String], &database) == SQLITE_OK)
    {
        const char *sqlStatment = "SELECT * FROM tblName ORDER BY NC_INDEX DESC";
        sqlite3_stmt *compiledStatement;
        if (sqlite3_prepare_v2(database,sqlStatment, -1, &compiledStatement,NULL) == SQLITE_OK)
        {
            while (sqlite3_step(compiledStatement) == SQLITE_ROW) {
                NSInteger aIndex = sqlite3_column_int(compiledStatement, 0);
                NSString *aName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement,1)];
                NSString *aNo = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement,2)];
                NCData *ncData = [[NCData alloc] initWithData:aIndex Name:aName No:aNo];
                [self.dbData addObject:ncData];
                NSLog(@"%ld / %@ / %@", (long) aIndex, aName, aNo);
            }
        }
        else{
            printf("could not prepare statement:%s]n", sqlite3_errmsg(database));
        }
        sqlite3_finalize(compiledStatement);
    }
    sqlite3_close(database);
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
