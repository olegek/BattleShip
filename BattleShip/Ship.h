//
//  Ship.h
//  BattleShip
//
//  Created by Olegek on 03.03.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ship : NSObject
{
    int lenght;
    int randomPoint;
    int randomAxis;
    int x;
    int y;
}
@property(nonatomic, strong) NSMutableArray * row;

-(int)generateRandomNumberBetweenMin:(int)min Max:(int)max;
-(void)check4Range;
-(void)check4Touch;
-(void)rowInformation;
@end
