//
//  Field.m
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import "Field.h"

@implementation Field
@synthesize row,rowBS;

-(void)setRow:(NSMutableArray *)row{
    rowBS = row;
}

-(void) generateField{
    
    row   = [[NSMutableArray alloc] initWithCapacity:10];
    NSMutableArray * board = [[NSMutableArray alloc] initWithCapacity:10];
 
    NSLog(@"%@",rowBS);
    
    
    for (int i = 0; i < 10; i++) {
        if([row containsObject:@"+"]==0){
                [row addObject:@"-"];
        }
    }
    
    
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
@end
