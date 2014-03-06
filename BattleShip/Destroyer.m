//
//  Destroyer.m
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import "Destroyer.h"

@implementation Destroyer
@synthesize row;

-(void)addDestroyer{
    row = [[NSMutableArray alloc]initWithCapacity:10];
    lenght = 2;
    
    randomAxis = [self generateRandomNumberBetweenMin:0 Max:1];
    randomPoint = [self generateRandomNumberBetweenMin:0 Max:9];
    
//    [self check4Range];
    
    if(randomAxis == 0){
        for ( x = 0; x<10; x++) {
            if(x == randomPoint){
                
  //              [self check4Touch];
                
                for (int i = randomPoint; i<randomPoint+lenght; i++) {
                    [row addObject:@"+"];
                }
            }
            else [row addObject:@"-"];
        }
    }
    if(randomAxis ==1){
        for (y = 0; y<10; y++) {
        
     //       [self check4Touch];
            
            if(y == randomPoint ){
                for (int q = y; q> y+lenght; q++) {
                    [row addObject:@"+"];
                }
            }
            else [row addObject:@"-"];
        }
    }
}
@end
