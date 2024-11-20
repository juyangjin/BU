//
//  NCData.h
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NCData : NSObject

@property NSInteger ncIndex;
@property NSString *ncName;
@property NSString *ncNo;

-(id)initWithData:(NSInteger)pIndex Name:(NSString *)pName No:(NSString *)pNo;

@end

NS_ASSUME_NONNULL_END
