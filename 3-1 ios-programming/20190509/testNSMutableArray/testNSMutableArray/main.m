//
//  main.m
//  testNSMutableArray
//
//  Created by 502-07 on 09/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str1=@"a",*str2=@"b",*str3=@"c";
    NSString *str4=@"d";
    NSLog(@"1.str1=%@,str2=%@,str3=%@,str4=%@\n",str1,str2,str3,str4);
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:str1,str2,str3, nil];
    NSLog(@"2.[array count] = %ld\n",[array count]);
    
    for(int i=0;i<[array count];i++){
        NSLog(@"array[%d] = %@\n",i,[array objectAtIndex:i]);
    }
    
    [array insertObject:str4 atIndex:2];
    NSLog(@"3.[array count] = %ld\n",[array count]);
    
    for(int i=0;i<[array count];i++){
        NSLog(@"array[%d] = %@\n",i,[array objectAtIndex:i]);
    }
    
    [array removeObjectAtIndex:3];
    NSLog(@"4.[array count] = %ld\n",[array count]);
    
    for(int i=0;i<[array count];i++){
        NSLog(@"array[%d] = %@\n",i,[array objectAtIndex:i]);
    }
    
    [array addObject:str3];
    NSLog(@"5.[array count] = %ld\n",[array count]);
    
    for(int i=0;i<[array count];i++){
        NSLog(@"array[%d] = %@\n",i,[array objectAtIndex:i]);
    }
    
    [array removeLastObject];
    NSLog(@"6.[array count] = %ld\n",[array count]);
    
    for(int i=0;i<[array count];i++){
        NSLog(@"array[%d] = %@\n",i,[array objectAtIndex:i]);
    }
    
    return 0;
}
