//
//  Calculator.m
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator:(double)value {
    accumulator = value;
}
-(void) clear{
    accumulator = 0;
}
-(double) accumulator {
    return accumulator;
}
-(void)add: (double) value {
    accumulator += value;
}
-(void)substract:(double)value {
    accumulator -= value;
}
-(void)multiply:(double)value {
    accumulator *= value;
}
-(void)divide:(double)value {
    if(value != 0.0){
        accumulator /= value;
    }
    else{
        NSLog(@"Division by zero.");
        accumulator = NAN;
    }
}
@end
