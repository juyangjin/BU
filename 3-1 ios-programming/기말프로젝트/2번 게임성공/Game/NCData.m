//
//  NCData.m
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "NCData.h"

@implementation NCData

@synthesize ncIndex,ncName,ncNo;

-(id)initWithData:(NSInteger)pIndex Name:(NSString *)pName No:(NSString *)pNo
{
    self.ncIndex = pIndex;
    self.ncName = pName;
    self.ncNo = pNo;
    
    return self;
}

@end
