//
//  Calculator.m
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(void) clear{
    _accumulator = 0;
}
-(void)add: (double) value {
    _accumulator += value;
}
-(void)substract:(double)value {
    _accumulator -= value;
}
-(void)multiply:(double)value {
    _accumulator *= value;
}
-(void)divide:(double)value {
    if(value != 0.0){
        _accumulator /= value;
    }
    else{
        NSLog(@"Division by zero.");
        _accumulator = NAN;
    }
}
@end
