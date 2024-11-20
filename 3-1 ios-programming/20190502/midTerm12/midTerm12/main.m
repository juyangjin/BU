//
//  main.m
//  midTerm12
//
//  Created by 502-07 on 02/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    int operator;
    int result;
}

-(int) operator;//getter
-(void)setOperator:(int)_operator;

-(int) result;//getter
-(void) setResult:(int)_result;

-(int)calc:(int)a with:(int)b;
@end

@implementation Calculator

-(int)operator{
    return operator;
}

-(void)setOperator:(int)_operator{
    operator = _operator;
}

-(int)result{
    return result;
}

-(void)setResult:(int)_result{
    result = _result;
}

-(int) calc:(int)a with:(int)b {
    int ans = 0;
    
    switch (operator) {
        case 1:// +
            ans = a + b;
            break;
            
        case 2:// -
            ans = a - b;
            break;
            
        case 3:// *
            ans = a * b;
            break;
            
        case 4:// /
            ans = a / b;
            break;
            
        case 5:// %
            ans = a % b;
            break;
            
        default:
            break;
    }
    return ans;
}

@end

int main(int argc, const char * argv[]) {
    Calculator *myCalc = [[Calculator alloc]init];
    
    myCalc.operator = 1;
    myCalc.result = [myCalc calc:10 with:20];
    NSLog(@"10+20 == %d\n",myCalc.result);
    
    myCalc.operator = 5;
    myCalc.result = [myCalc calc:10 with:3];
    NSLog(@"10%%3 == %d\n",myCalc.result);
    
    return 0;
}
