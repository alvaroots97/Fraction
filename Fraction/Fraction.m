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
-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    // to add two fractions: // a/b + c/d == ((a*d) + (b*c) / (b*d)
    result.numerator = self.numerator * [f denominator] + self.denominator * [f numerator];
    result.denominator = self.denominator * [f denominator];
    
    [result reduce];
    return result;
}
-(Fraction *) substract:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    // to substract two fractions: // a/b - c/d = ad - bc/bd
    result.numerator = self.numerator * [f denominator] - self.denominator * [f numerator];
    result.denominator = self.denominator * [f denominator];
    
    [result reduce];
    return result;
}
-(Fraction *) multiply:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    // to multiply two fractions: // a/b * c/d = (a*c)/(b*d)
    result.numerator = self.numerator * [f numerator];
    result.denominator = self.denominator * [f denominator];
    
    [result reduce];
    return result;
}
-(Fraction *) divide:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    // to divide two fractions: // (a/b) / (c/d) = (a*d) / (b *c)
    result.numerator = self.numerator * [f denominator];
    result.denominator = self.denominator * [f numerator];
    
    [result reduce];
    return result;
}
-(void) reduce {
    // local variables
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
    /*
    static int hitCount = 0;
    hitCount++;
    u++;
    NSLog(@"u = %i", u);
    NSLog(@"hitCount = %i", hitCount);
     */
}
-(instancetype)init {
    return [self initWith:1 over:1];
}
-(instancetype)initWith: (int) n over: (int) d {
    self = [super init];
    if (self) {
        [self setTo:n over:d];
    }
    return self;
}
@end
