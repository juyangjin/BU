//
//  MData.m
//  Music
//
//  Created by 502-07 on 23/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "MData.h"

@implementation MData

@synthesize mIndex, mTitle, mSing, mSomg;

-(id)initWithData:(NSInteger)pIndex Title:(NSString *)pTitle Sing:(NSString *)pSing Song:(NSString *)pSong;
{
    self.mIndex=pIndex;
    self.mTitle=pTitle;
    self.mSing=pSing;
    self.mSomg=pSong;
    
    return self;
}
@end
