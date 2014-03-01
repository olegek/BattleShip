//
//  main.m
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//
//
//    Назви кораблів
// battleship   - чотирьохпалубний
// cruiser  - трьохпалубний
// destroyer   - двопалубний
// submarine - однопалубний

#import <Foundation/Foundation.h>
#import "Field.h"
#import "Battleship.h"
#import "Cruiser.h"
#import "Destroyer.h"
#import "Submarine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Battleship * b = [[Battleship alloc]init];
        [b addShip];
      
        Field * field = [[Field alloc]init];
        [field generateField];
        


        
    }
    return 0;
}

