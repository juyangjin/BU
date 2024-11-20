//
//  ViewController.m
//  Kbbo
//
//  Created by 502-20 on 21/03/2019.
//  Copyright © 2019 502-20. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize faceAlice;
@synthesize faceBob;
@synthesize kbboAlice;
@synthesize kbboBob;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        kbboBob.image = [UIImage imageNamed:@"K.jpeg"];
        kbboAlice.image = [UIImage imageNamed:@"K.jpeg"];
        faceAlice.image = [UIImage imageNamed:@"So So.png"];
        faceBob.image = [UIImage imageNamed:@"So So.png"];
}

- (IBAction)Button1:(id)sender {
    rnAlice = rand() % 3;
    int result;
    
    printf("Alice %d Bob %d\n", rnAlice, rnBob);
    

switch (rnBob) {
    case 0:
        kbboBob.image = [UIImage imageNamed:@"K.jpeg"];
        if(rnAlice==0){ result=0; //soso
            kbboAlice.image = [UIImage imageNamed:@"K.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"So So.png"];
            faceBob.image = [UIImage imageNamed:@"So So.png"];
        }
        
        else if(rnAlice==1){ result=1;//bob lose
            kbboAlice.image = [UIImage imageNamed:@"V.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            faceBob.image = [UIImage imageNamed:@"Angry.png"];
        }
        
        else{ result=2;//bob win
            kbboAlice.image = [UIImage imageNamed:@"B.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            faceBob.image = [UIImage imageNamed:@"Happy.png"];
        }
        break;
        
    case 1:
        kbboBob.image = [UIImage imageNamed:@"V.jpeg"];
        if(rnAlice==0){ result=2; //bob win
            kbboAlice.image = [UIImage imageNamed:@"K.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            faceBob.image = [UIImage imageNamed:@"Happy.png"];
        }
        
        else if(rnAlice==1){ result=0;//soso
            kbboAlice.image = [UIImage imageNamed:@"V.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"So So.png"];
            faceBob.image = [UIImage imageNamed:@"So So.png"];
        }
        
        else{ result=1;//bob lose
            kbboAlice.image = [UIImage imageNamed:@"B.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            faceBob.image = [UIImage imageNamed:@"Angry.png"];
        }
        
        break;
        
    case 2:
        kbboBob.image = [UIImage imageNamed:@"B.jpeg"];
        if(rnAlice==0){ result=1; //bob lose
            kbboAlice.image = [UIImage imageNamed:@"K.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            faceBob.image = [UIImage imageNamed:@"Angry.png"];
        }
        
        else if(rnAlice==1){ result=2;//bob win
            kbboAlice.image = [UIImage imageNamed:@"V.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            faceBob.image = [UIImage imageNamed:@"Happy.png"];
        }
        
        else{ result=0;//soso
            kbboAlice.image = [UIImage imageNamed:@"B.jpeg"];
            faceAlice.image = [UIImage imageNamed:@"So So.png"];
            faceBob.image = [UIImage imageNamed:@"So So.png"];
        }
        
        break;
}
}
- (IBAction)Button2:(id)sender {
    rnBob = rand() & 3;
    int result;
    printf("Alice %d Bob %d\n", rnAlice, rnBob);

    
    switch (rnAlice) {
        case 0:
            kbboAlice.image = [UIImage imageNamed:@"K.jpeg"];
            if(rnBob==0){ result=0; //soso
                kbboBob.image = [UIImage imageNamed:@"K.jpeg"];
                faceBob.image = [UIImage imageNamed:@"So So.png"];
                faceAlice.image = [UIImage imageNamed:@"So So.png"];
            }
            
            else if(rnBob==1){ result=1;//bob lose
                kbboBob.image = [UIImage imageNamed:@"V.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Happy.png"];
                faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            }
            
            else{ result=2;//bob win
                kbboBob.image = [UIImage imageNamed:@"B.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Angry.png"];
                faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            }
            break;
            
        case 1:
            kbboAlice.image = [UIImage imageNamed:@"V.jpeg"];
            if(rnAlice==0){ result=2; //bob win
                kbboBob.image = [UIImage imageNamed:@"K.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Angry.png"];
                faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            }
            
            else if(rnAlice==1){ result=0;//soso
                kbboBob.image = [UIImage imageNamed:@"V.jpeg"];
                faceBob.image = [UIImage imageNamed:@"So So.png"];
                faceAlice.image = [UIImage imageNamed:@"So So.png"];
            }
            
            else{ result=1;//bob lose
                kbboBob.image = [UIImage imageNamed:@"B.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Happy.png"];
                faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            }
            
            break;
            
        case 2:
            kbboAlice.image = [UIImage imageNamed:@"B.jpeg"];
            if(rnAlice==0){ result=1; //bob lose
                kbboBob.image = [UIImage imageNamed:@"K.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Happy.png"];
                faceAlice.image = [UIImage imageNamed:@"Angry.png"];
            }
            
            else if(rnAlice==1){ result=2;//bob win
                kbboBob.image = [UIImage imageNamed:@"V.jpeg"];
                faceBob.image = [UIImage imageNamed:@"Angry.png"];
                faceAlice.image = [UIImage imageNamed:@"Happy.png"];
            }
            
            else{ result=0;//soso
                kbboBob.image = [UIImage imageNamed:@"B.jpeg"];
                faceBob.image = [UIImage imageNamed:@"So So.png"];
                faceAlice.image = [UIImage imageNamed:@"So So.png"];
            }
            
            break;
    }
    
}
@end
