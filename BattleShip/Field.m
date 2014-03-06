//
//  Field.m
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import "Field.h"

@implementation Field

-(void) generateField{
    
    NSMutableArray * row   = [[NSMutableArray alloc] initWithCapacity:10];
    NSMutableArray * board = [[NSMutableArray alloc] initWithCapacity:10];
    
  /*  for (int i = 0; i < 10; i++) {
        [row addObject:@"_"];
    }*/
    [self addShip];
    
    [board addObject:row];
    
    NSMutableArray *preFilledRow = nil;
    
    for (int k = 0; k < 9; k++) {
        
        preFilledRow = [row mutableCopy];
        [board addObject:preFilledRow];
        preFilledRow = nil;
    }
    
    
    for (NSMutableArray *boardRow in board)
        NSLog(@"%@", [boardRow componentsJoinedByString:@" "]);
}
-(void)addShip{
    
    int count = 1;
    
    if(count ==1){
        Battleship * b = [[Battleship alloc]init];
        [b addBattleShip];
        count ++;
    }
    
    if(count==2){
        Cruiser * c = [[Cruiser alloc]init];
        
        for(int i = 0 ; i<2 ;i++){
            [c addCruiser];
        }
        count ++;
    }
    
    if(count==3){
        Destroyer * d = [[Destroyer alloc]init];
        for(int i =0;i<3;i++){
            [d addDestroyer];
        }
        count ++;
    }
    
    if(count == 4){
        Submarine *s = [[Submarine alloc]init];
        for (int i = 0; i<4; i++) {
            [s addSubmarine];
        }
    }
}

@end
