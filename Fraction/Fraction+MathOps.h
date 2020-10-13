//
//  Fraction+MathOps.h
//  Fraction
//
//  Created by Alvaro Alva on 10/12/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

NS_ASSUME_NONNULL_END
