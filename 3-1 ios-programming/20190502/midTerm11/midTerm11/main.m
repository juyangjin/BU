//
//  main.m
//  midTerm11
//
//  Created by 502-07 on 02/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSArray *primaryColors = [NSArray arrayWithObjects:@"red",@"yellow",@"blue",nil];
    unsigned long count;
    NSString *selectedColor;
    
    count = [primaryColors count];
    NSLog(@"Number of objects in primaryColors -> %ld",count);
    
    selectedColor = [primaryColors objectAtIndex:1];
    NSLog(@"The object in 2nd room in primaryColors -> %@",selectedColor);
    
    selectedColor = [primaryColors lastObject];
    NSLog(@"The last object in primaryColors -> %@",selectedColor);
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
