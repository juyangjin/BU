//
//  AppDelegate.m
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "AppDelegate.h"
#import "MusicTableViewController.h"
#import "MData.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize dbMusic, dbPath, dbData, isFirstAccess;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.isFirstAccess=TRUE;
    
    self.dbMusic=@"Music.db";
    self.dbPath=@"/Users/a502-07/Downloads/Music.db";
    
    return YES;
}

-(void)readMdataFromDB
{
    sqlite3 *database;
    
    if(self.isFirstAccess==TRUE)
    {
        self.dbData=[[NSMutableArray alloc] init];
        self.isFirstAccess=FALSE;
    }
    else
    {
        [self.dbData removeAllObjects];
    }
    if (sqlite3_open([self.dbPath UTF8String], &database) == SQLITE_OK)
    {
        const char *sqlStatement = "SELECT * FROM tblNameCard ORDER BY NC_INDEX DESC";
        sqlite3_stmt *compiledStatement;
        if (sqlite3_prepare_v2(database, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK)
        {
            while (sqlite3_step(compiledStatement) == SQLITE_ROW) {
                NSInteger aIndex = sqlite3_column_int(compiledStatement, 0);
                NSString *aTitle = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 1)];
                NSString *aSing = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 2)];
                NSString *aSong = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 3)];
                NSData *mData = [[MData alloc] initWithData:aIndex Title:aTitle Sing:aSing Song:aSong];
                [self.dbData addObject:mData];
                NSLog(@"%ld / %@ / %@ / %@", (long)aIndex, aTitle, aSing, aSong);
            }
            
        }
        else {
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
