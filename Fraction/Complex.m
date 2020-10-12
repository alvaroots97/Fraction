//
//  Complex.m
//  Fraction
//
//  Created by Alvaro Alva on 9/28/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "Complex.h"

@implementation Complex
@synthesize real, imaginary;

-(void) print {
    NSLog (@" %g + %gi", real, imaginary);
}
-(void) setReal: (double) a andImaginary: (double) b {
    real = a ;
    imaginary = b;
}
-(Complex *) add: (Complex *) f {
    Complex *result = [[Complex alloc]init];
    result.real = self.real + f.real;
    result.imaginary = self.imaginary + f.imaginary;
    return result;
}
@end
