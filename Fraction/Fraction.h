//
//  Fraction.h
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
@property int numerator;
@property int denominator;

-(void) print;  //instance method
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
// add argument from receiver
-(Fraction *) add: (Fraction *) f;
// substract argument from receiver
-(Fraction *) substract: (Fraction *) f;
// multiply argument from receiver
-(Fraction *) multiply: (Fraction *) f;
// divide argument from receiver
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
@end

NS_ASSUME_NONNULL_END
