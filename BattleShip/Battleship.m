//
//  Battleship.m
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import "Battleship.h"

@implementation Battleship
-(void)addShip{
 
    NSMutableArray * rowBS = [[NSMutableArray alloc]init];
    
    int lenght = 4;
    
    for (int x = 0; x<0+lenght; x++) {
        [rowBS addObject:@"+"];
    }

    Field * f = [[Field alloc]init];
    [f setRow:rowBS];

}

@end
