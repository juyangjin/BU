//
//  NCData.h
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NCData : NSObject

@property NSInteger ncIndex;
@property NSString *ncName;
@property NSString *ncNo;
@property NSString *ncTel;

-(id)initWithData:(NSInteger)pIndex Name:(NSString *)pName No:(NSString *)pNo Tel:(NSString *)pTel;

@end

NS_ASSUME_NONNULL_END
