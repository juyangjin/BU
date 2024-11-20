//
//  ViewController.m
//  midTerm15
//
//  Created by 502-07 on 02/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize img0,img1,img2,img3;
@synthesize puzzle;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *frog1 = [UIImage imageNamed:@"1.png"];
    UIImage *frog2 = [UIImage imageNamed:@"2.png"];
    UIImage *frog3 = [UIImage imageNamed:@"3.png"];
    UIImage *frog4 = [UIImage imageNamed:@"4.png"];
    
    frogImgArray = [NSArray arrayWithObjects:frog1, frog2, frog3, frog4,nil];
    
    for (int i=0; i<4; i++) {
        frogIndex[i] = -1;
        result2[i] = i;
    }
    
    for (int i=0; i<4; i++) {
        frogIndex[i] = [self getRandomFrog];
        NSLog(@"%d: %d\n", i, frogIndex[i]);
    }
    
    img0.image = [frogImgArray objectAtIndex:frogIndex[0]];
    img1.image = [frogImgArray objectAtIndex:frogIndex[1]];
    img2.image = [frogImgArray objectAtIndex:frogIndex[2]];
    img3.image = [frogImgArray objectAtIndex:frogIndex[3]];
    
    
    
}


- (IBAction)swapH1:(id)sender {
    int temp;
    
    temp = frogIndex[0];
    frogIndex[0] = frogIndex[1];
    frogIndex[1] = temp;
    
    img0.image = [frogImgArray objectAtIndex:frogIndex[0]];
    img1.image = [frogImgArray objectAtIndex:frogIndex[1]];

    
    if (frogIndex[0]==result2[0]){
        
        if (frogIndex[1]==result2[1]){
            
            if (frogIndex[2]==result2[2]){
                
                if (frogIndex[3]==result2[3]){
                    puzzle.text = @"완료";
                }
                else
                {
                    puzzle.text = @"image puzzle";
                }
            }
            else
            {
                puzzle.text = @"image puzzle";
            }
        }
        else
        {
            puzzle.text = @"image puzzle";
        }
    }
    else
    {
      puzzle.text = @"image puzzle";
    }
}

- (IBAction)swapH2:(id)sender {
    int temp;
    
    temp = frogIndex[2];
    frogIndex[2] = frogIndex[3];
    frogIndex[3] = temp;
    
    img2.image = [frogImgArray objectAtIndex:frogIndex[2]];
    img3.image = [frogImgArray objectAtIndex:frogIndex[3]];
    
    if (frogIndex[0]==result2[0]){
        
        if (frogIndex[1]==result2[1]){
            
            if (frogIndex[2]==result2[2]){
                
                if (frogIndex[3]==result2[3]){
                    puzzle.text = @"완료";
                }
                else
                {
                    puzzle.text = @"image puzzle";
                }
            }
            else
            {
                puzzle.text = @"image puzzle";
            }
        }
        else
        {
            puzzle.text = @"image puzzle";
        }
    }
    else
    {
        puzzle.text = @"image puzzle";
    }
}

- (IBAction)swapV1:(id)sender {
    int temp;
    
    temp = frogIndex[0];
    frogIndex[0] = frogIndex[2];
    frogIndex[2] = temp;
    
    img0.image = [frogImgArray objectAtIndex:frogIndex[0]];
    img2.image = [frogImgArray objectAtIndex:frogIndex[2]];
    
    if (frogIndex[0]==result2[0]){
        
        if (frogIndex[1]==result2[1]){
            
            if (frogIndex[2]==result2[2]){
                
                if (frogIndex[3]==result2[3]){
                    puzzle.text = @"완료";
                }
                else
                {
                    puzzle.text = @"image puzzle";
                }
            }
            else
            {
                puzzle.text = @"image puzzle";
            }
        }
        else
        {
            puzzle.text = @"image puzzle";
        }
    }
    else
    {
        puzzle.text = @"image puzzle";
    }
}

- (IBAction)swapV2:(id)sender {
    int temp;
    
    temp = frogIndex[1];
    frogIndex[1] = frogIndex[3];
    frogIndex[3] = temp;
    
    img1.image = [frogImgArray objectAtIndex:frogIndex[1]];
    img3.image = [frogImgArray objectAtIndex:frogIndex[3]];
    
    if (frogIndex[0]==result2[0]){
        
        if (frogIndex[1]==result2[1]){
            
            if (frogIndex[2]==result2[2]){
                
                if (frogIndex[3]==result2[3]){
                    puzzle.text = @"완료";
                }
                else
                {
                    puzzle.text = @"image puzzle";
                }
            }
            else
            {
                puzzle.text = @"image puzzle";
            }
        }
        else
        {
            puzzle.text = @"image puzzle";
        }
    }
    else
    {
        puzzle.text = @"image puzzle";
    }
}

- (int)getRandomFrog{
    int find  = 0;
    int rnd = (rand() % 4);
    
    while (!find) {
        find = 1;
        
        for (int i=0; i<4; i++) {
            if(rnd == frogIndex[i]){
            find = 0;
            break;
            }
        }
        if(!find) {
            rnd =(rand() % 4);
        }
    }
    
    return rnd;
}
@end
