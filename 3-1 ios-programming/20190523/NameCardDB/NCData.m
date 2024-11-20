//
//  NCData.m
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import "NCData.h"

@implementation NCData

@synthesize ncIndex, ncName, ncNo, ncTel;

-(id)initWithData:(NSInteger)pIndex Name:(NSString *)pName No:(NSString *)pNo Tel:(NSString *)pTel
{
    self.ncIndex=pIndex;
    self.ncName=pName;
    self.ncNo=pNo;
    self.ncTel=pTel;
    
    return self;
}

@end
