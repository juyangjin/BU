//
//  NameViewController.m
//  Game
//
//  Created by 502-07 on 31/05/2019.
//  Copyright © 2019 502-07. All rights reserved.
//

#import "NameViewController.h"

@interface NameViewController ()

@end

@implementation NameViewController
@synthesize name, no;
@synthesize ncName,ncNo;

@synthesize  img0,img1,img2,img3,img4,img5,img6,img7,img8;
@synthesize game;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ncName.text = self.name;
    ncNo.text = self.no;
    
    UIImage *game1 = [UIImage imageNamed:@"1.jpg"];
    UIImage *game2 = [UIImage imageNamed:@"2.jpg"];
    UIImage *game3 = [UIImage imageNamed:@"3.jpg"];
    UIImage *game4 = [UIImage imageNamed:@"4.jpg"];
    UIImage *game5 = [UIImage imageNamed:@"5.jpg"];
    UIImage *game6 = [UIImage imageNamed:@"6.jpg"];
    UIImage *game7 = [UIImage imageNamed:@"7.jpg"];
    UIImage *game8 = [UIImage imageNamed:@"8.jpg"];
    UIImage *game9 = [UIImage imageNamed:@"9.jpg"];
    
    gameImgArray = [NSArray arrayWithObjects:game1,game2,game3,game4,game5,game6,game7,game8,game9, nil];
    
    for (int i=0; i<9; i++) {
        gameIndex[i] = -1;
        result2[i] = i;
    }
    
    for (int i=0; i<9;i++) {
        gameIndex[i] = [self getRandomGame];
        NSLog(@"%d: %d\n",i,gameIndex[i]);
    }
    img0.image = [gameImgArray objectAtIndex:gameIndex[0]];
    img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
    img2.image = [gameImgArray objectAtIndex:gameIndex[2]];
    img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
    img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
    img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
    img6.image = [gameImgArray objectAtIndex:gameIndex[6]];
    img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
    img8.image = [gameImgArray objectAtIndex:gameIndex[8]];
    
}


- (IBAction)btnup:(id)sender {
    int temp;
    
    if(gameIndex[0]==result2[0]){
        
    }
    else if (gameIndex[1]==result2[0]){
        
    }
    else if (gameIndex[2]==result2[0]){
    }
    else if (gameIndex[3]==result2[0]){
        temp = gameIndex[3];
        gameIndex[3] = gameIndex[0];
        gameIndex[0] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img0.image = [gameImgArray objectAtIndex:gameIndex[0]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                        
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[4]==result2[0]){
        temp = gameIndex[4];
        gameIndex[4] = gameIndex[1];
        gameIndex[1] = temp;
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[5]==result2[0]){
        temp = gameIndex[5];
        gameIndex[5] = gameIndex[2];
        gameIndex[2] = temp;
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        img2.image = [gameImgArray objectAtIndex:gameIndex[2]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[6]==result2[0]){
        temp = gameIndex[6];
        gameIndex[6] = gameIndex[3];
        gameIndex[3] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img6.image = [gameImgArray objectAtIndex:gameIndex[6]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[7]==result2[0]){
        temp = gameIndex[7];
        gameIndex[7] = gameIndex[4];
        gameIndex[4] = temp;
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[8]==result2[0]){
        temp = gameIndex[8];
        gameIndex[8] = gameIndex[5];
        gameIndex[5] = temp;
        img8.image = [gameImgArray objectAtIndex:gameIndex[8]];
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    
}

- (IBAction)btndown:(id)sender {
    int temp;
    
    if(gameIndex[0]==result2[0]){
        temp = gameIndex[0];
        gameIndex[0] = gameIndex[3];
        gameIndex[3] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img0.image = [gameImgArray objectAtIndex:gameIndex[0]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[1]==result2[0]){
        temp = gameIndex[4];
        gameIndex[4] = gameIndex[1];
        gameIndex[1] = temp;
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[2]==result2[0]){
        temp = gameIndex[5];
        gameIndex[5] = gameIndex[2];
        gameIndex[2] = temp;
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        img2.image = [gameImgArray objectAtIndex:gameIndex[2]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[3]==result2[0]){
        temp = gameIndex[6];
        gameIndex[6] = gameIndex[3];
        gameIndex[3] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img6.image = [gameImgArray objectAtIndex:gameIndex[6]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[4]==result2[0]){
        temp = gameIndex[7];
        gameIndex[7] = gameIndex[4];
        gameIndex[4] = temp;
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[5]==result2[0]){
        temp = gameIndex[8];
        gameIndex[8] = gameIndex[5];
        gameIndex[5] = temp;
        img8.image = [gameImgArray objectAtIndex:gameIndex[8]];
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[6]==result2[0]){
        
    }
    else if (gameIndex[7]==result2[0]){
        
    }
    else if (gameIndex[8]==result2[0]){
        
    }
}

- (IBAction)btnL:(id)sender {
    int temp;
    
    if(gameIndex[0]==result2[0]){

    }
    else if (gameIndex[1]==result2[0]){
        temp = gameIndex[1];
        gameIndex[1] = gameIndex[0];
        gameIndex[0] = temp;
        img0.image = [gameImgArray objectAtIndex:gameIndex[0]];
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[2]==result2[0]){
        temp = gameIndex[2];
        gameIndex[2] = gameIndex[1];
        gameIndex[1] = temp;
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        img2.image = [gameImgArray objectAtIndex:gameIndex[2]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[3]==result2[0]){
   
    }
    else if (gameIndex[4]==result2[0]){
        temp = gameIndex[4];
        gameIndex[4] = gameIndex[3];
        gameIndex[3] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[5]==result2[0]){
        temp = gameIndex[5];
        gameIndex[5] = gameIndex[4];
        gameIndex[4] = temp;
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[6]==result2[0]){
        
    }
    else if (gameIndex[7]==result2[0]){
        temp = gameIndex[7];
        gameIndex[7] = gameIndex[6];
        gameIndex[6] = temp;
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        img6.image = [gameImgArray objectAtIndex:gameIndex[6]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[8]==result2[0]){
        temp = gameIndex[8];
        gameIndex[8] = gameIndex[7];
        gameIndex[7] = temp;
        img8.image = [gameImgArray objectAtIndex:gameIndex[8]];
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
}

- (IBAction)btnR:(id)sender {
    int temp;
    
    if(gameIndex[0]==result2[0]){
        temp = gameIndex[1];
        gameIndex[1] = gameIndex[0];
        gameIndex[0] = temp;
        img0.image = [gameImgArray objectAtIndex:gameIndex[0]];
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[1]==result2[0]){
        temp = gameIndex[2];
        gameIndex[2] = gameIndex[1];
        gameIndex[1] = temp;
        img1.image = [gameImgArray objectAtIndex:gameIndex[1]];
        img2.image = [gameImgArray objectAtIndex:gameIndex[2]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[2]==result2[0]){
        
    }
    else if (gameIndex[3]==result2[0]){
        temp = gameIndex[4];
        gameIndex[4] = gameIndex[3];
        gameIndex[3] = temp;
        img3.image = [gameImgArray objectAtIndex:gameIndex[3]];
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[4]==result2[0]){
        temp = gameIndex[5];
        gameIndex[5] = gameIndex[4];
        gameIndex[4] = temp;
        img4.image = [gameImgArray objectAtIndex:gameIndex[4]];
        img5.image = [gameImgArray objectAtIndex:gameIndex[5]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[5]==result2[0]){
    
    }
    else if (gameIndex[6]==result2[0]){
        temp = gameIndex[7];
        gameIndex[7] = gameIndex[6];
        gameIndex[6] = temp;
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        img6.image = [gameImgArray objectAtIndex:gameIndex[6]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[7]==result2[0]){
        temp = gameIndex[8];
        gameIndex[8] = gameIndex[7];
        gameIndex[7] = temp;
        img8.image = [gameImgArray objectAtIndex:gameIndex[8]];
        img7.image = [gameImgArray objectAtIndex:gameIndex[7]];
        
        if (gameIndex[0]==result2[0]){
            
            if (gameIndex[1]==result2[1]){
                
                if (gameIndex[2]==result2[2]){
                    
                    if (gameIndex[3]==result2[3]){
                        if(gameIndex[4]==result2[4]){
                            if(gameIndex[5]==result2[5]){
                                if(gameIndex[6]==result2[6]){
                                    if(gameIndex[7]==result2[7]){
                                        if(gameIndex[8]==result2[8]){
                                            
                                        }
                                        else
                                        {
                                            game.text = @"Game";
                                        }
                                    }
                                    else
                                    {
                                        game.text = @"Game";
                                    }
                                }
                                else
                                {
                                    game.text = @"Game";
                                }
                            }
                            else
                            {
                                game.text = @"Game";
                            }
                        }
                        else
                        {
                            game.text = @"Game";
                        }
                    }
                    else
                    {
                        game.text = @"Game";
                    }
                }
                else
                {
                    game.text = @"Game";
                }
            }
            else
            {
                game.text = @"Game";
            }
        }
        else
        {
            game.text = @"Game";
        }
    }
    else if (gameIndex[8]==result2[0]){
       
    }
}

-(int)getRandomGame {
    int find = 0;
    int rnd = (rand() % 9);
    
    while (!find) {
        find = 1;
        
        for (int i=0; i<9; i++){
            if(rnd == gameIndex[i]){
                find = 0;
                break;
            }
        }
        if(!find){
            rnd = (rand() % 9);
        }
    }
    return rnd;
}
@end
