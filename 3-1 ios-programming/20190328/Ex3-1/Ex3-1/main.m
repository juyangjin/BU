//
//  main.m
//  Ex3-1
//
//  Created by 502-02 on 28/03/2019.
//  Copyright © 2019 502-02. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
-(void) move;
@end

@interface Ship : Vehicle
-(void) shoot;
@end

@implementation Vehicle
-(void) move {
    NSLog(@"move ius the method of Vehicle");
}
@end

@implementation Ship
-(void) shoot {
    NSLog(@"shoot is the method of Ship");
}
@end

int main(int argc, const char * argv[]) {
    Ship *s = [[Ship alloc] init];
    Vehicle *v = [[Vehicle alloc] init];
    
    NSArray *[myArray = [NSArray arrayWithObjects:v, @"2nd", s, @"last", nil]];
   
    return 0;
}
