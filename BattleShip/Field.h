//
//  Field.h
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Battleship.h"
#import "Cruiser.h"
#import "Destroyer.h"
#import "Submarine.h"

@interface Field : NSObject

-(void) generateField;
-(void) addShip;

@end
