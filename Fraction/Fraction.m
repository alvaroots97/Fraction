//
//  Fraction.m
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void)print {
    NSLog(@"%i/%i", numerator, denominator);
}
-(double)convertToNum {
    if(denominator !=0){
        return(double) numerator / denominator;
    }
    else {
        return NAN;
    }
}
-(void)setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}
-(void) add: (Fraction *) f {
    // to add two fractions: // a/b + c/d == ((a*d) + (b*c) / (b*d)
    self.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    self.denominator = self.denominator * [f denominator];
}
@end
