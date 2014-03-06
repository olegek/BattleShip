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
#include "Field.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Field * f = [[Field alloc]init];
        [f generateField];
    }
    return 0;
}

