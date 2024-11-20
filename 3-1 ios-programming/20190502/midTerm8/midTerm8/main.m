//
//  main.m
//  midTerm8
//
//  Created by 502-07 on 02/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface midTerm8 : NSObject

- (int) compare:(int)a with:(int)b;
@end

@implementation midTerm8

-(int)compare:(int)a with:(int)b {
    int max;
    
    if(a>b){
        max = a;
    
    }
    else{
        max = b;
    }
    return max;
}

@end

int main(int argc, const char * argv[]) {
    int result;
    
    midTerm8 *test8 = [[midTerm8 alloc] init];
    
    result = [test8 compare:10 with:20];
    NSLog(@"10, 20 -> max = %d\n", result);
    
    return 0;
}
