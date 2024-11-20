//
//  main.m
//  testNSMutableString
//
//  Created by 502-07 on 09/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSMutableString *String = [NSMutableString stringWithString:@"Hello"];
    NSLog(@"1.%@",String);
    
    [String appendString:@"World"];
    NSLog(@"2.%@\n",String);
    
    [String insertString:@" " atIndex:5];
    NSLog(@"3.%@",String);
    
    [String setString:@"Good Bye"];
    NSLog(@"4.%@",String);
    
    return 0;
}
