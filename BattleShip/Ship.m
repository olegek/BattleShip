//
//  Ship.m
//  BattleShip
//
//  Created by Olegek on 03.03.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import "Ship.h"

@implementation Ship
@synthesize row; 

-(int)generateRandomNumberBetweenMin:(int)min Max:(int)max{
    
    return ( (arc4random() % (max-min+1)) + min );
}

-(void)check4Touch{
    if(randomAxis == 0){
        for (int i=0; i<10; i++) {
            if ([row containsObject:@"+"]==randomPoint) {
                randomPoint = [self generateRandomNumberBetweenMin:0 Max:9];
            }
        }
        for (int i = 0 ; i<10; i++) {
            if([row containsObject:@"_"]==randomPoint){
                int k = randomPoint;
                if ( randomPoint - 1 != [row containsObject:@"+"] && randomPoint + lenght + 1 != [row containsObject:@"+"]) {
                    
                    randomPoint = k;
                }
            }
        }
    }
    
    if(randomAxis ==1 ){
        if([row containsObject:@"+"]==randomPoint){
            int r = [self generateRandomNumberBetweenMin:0 Max:1];
            if(r == 0){
                randomPoint  = randomPoint + 2;
            }
            else randomPoint = randomPoint - 2;
            }
    
        if ([row containsObject:@"_"]==randomPoint) {
            int k = randomPoint;
            
            if( y + lenght!= [row containsObject:@"+"]  ) {
                randomPoint = k;
            }
            
            else randomPoint = [self generateRandomNumberBetweenMin:0 Max:9];
        }
    }
}

-(void)check4Range{
    if(9<=randomPoint+lenght){
        randomPoint = [self generateRandomNumberBetweenMin: 0 Max: 9];
    }
}

-(void)rowInformation{
    row = [[NSMutableArray alloc]initWithCapacity:10];
}
@end
