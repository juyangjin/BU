//
//  MData.h
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MData : NSObject

@property NSInteger mIndex;
@property NSString *mtitle;
@property NSString *mSing;
@property NSString *mSomg;

-(id)initWithData:(NSInteger)pIndex Title:(NSString *)pTitle Sing:(NSString *)pSing Song:(NSString *)pSong;
@end

NS_ASSUME_NONNULL_END
