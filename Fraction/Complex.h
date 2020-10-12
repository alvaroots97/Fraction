//
//  Complex.h
//  Fraction
//
//  Created by Alvaro Alva on 9/28/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject
@property double real, imaginary;

-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
@end

NS_ASSUME_NONNULL_END
