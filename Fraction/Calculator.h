//
//  Calculator.h
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject
@property double accumulator;

-(void)add: (double)value;
-(void)substract: (double) value;
-(void)multiply: (double) value;
-(void)divide: (double) value;

-(void) clear;

@end

NS_ASSUME_NONNULL_END
