//
//  Field.h
//  BattleShip
//
//  Created by Olegek on 26.02.14.
//  Copyright (c) 2014 OlegekLegek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Field : NSObject

@property (nonatomic,strong) NSMutableArray * row;
@property (nonatomic,strong) NSMutableArray * rowBS;

-(void) generateField;
-(void) setRow:(NSMutableArray *)row;
@end
