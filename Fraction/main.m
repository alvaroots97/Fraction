//
//  main.m
//  Fraction
//
//  Created by Alvaro Alva on 9/14/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Calculator.h"
#import "Complex.h"
#import "Fraction+MathOps.h"

//void menu(void);
//void getInput (void);
//void calculate(double value1, char operator, double value2);
//void result(Calculator *calculator, double value1, char operator, double value2);
void printObject(id obj);
void testPrimitives(void);
void arithmeticOperators(void);
void integerArithmetic(void);
void implicitConversion(void);
void testCalculator(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Developer Alvaro Alva");
        Fraction *a = [[Fraction alloc]init];
        Fraction *b = [[Fraction alloc]init];
        Fraction *result;
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        
        [a print];
        NSLog(@" +");
        [b print];
        NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");
        
        [a print];
        NSLog(@" -");
        [b print];
        NSLog(@"-----");
        result = [a substract: b];
        [result print];
        NSLog(@"\n");
        
        [a print];
        NSLog(@" *");
        [b print];
        NSLog(@"-----");
        result = [a multiply: b];
        [result print];
        NSLog(@"\n");
        
        [a print];
        NSLog(@" /");
        [b print];
        NSLog(@"-----");
        result = [a divide: b];
        [result print];
        NSLog(@"\n");
        
        /*
        Fraction *a, *b, *c, *d;
        a = [[Fraction alloc]initWith:1 over:3];
        b = [[Fraction alloc]initWith:3 over:7];
        c = [[Fraction alloc]initWith:2 over:3];
        d = [[Fraction alloc]init];
        [a print];
        [b print];
        [c print];
        [d print];
         */
        /*
        int numerator, denominator;
        Fraction *myFraction;
        Fraction *yourFraction;
        
        myFraction = [[Fraction alloc] init];
        yourFraction = [Fraction new];
        NSLog(@"Please enter the numerator and denominator for a fraction: ");
        scanf("%d %d", &numerator, &denominator);
        
        myFraction.numerator = numerator;
        myFraction.denominator = denominator;
        
        [yourFraction setTo:3 over:4];
        
        NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        [myFraction print];
        NSLog(@"The result of converting the fraction to a number is: %g", [myFraction convertToNum]);
        NSLog (@"The value of yourFraction is :");
        [yourFraction print];
        Fraction *result = [myFraction add: yourFraction];
        [myFraction print];
        [yourFraction print];
        [result print];
        
        for(int i=0; i <10; i++){
            [myFraction reduce];
            [yourFraction reduce];
        }
         */
        //testPrimitives();
        //arithmeticOperators();
        //integerArithmetic();
        //implicitConversion();
        //testCalculator();
        /*
        Fraction *f1 = [[Fraction alloc]init];
        Complex *c1 = [[Complex alloc]init];
        Calculator *cal = [[Calculator alloc]init];
        [f1 setTo:2 over:5];
        [c1 setReal: 10.0 andImaginary:2.5];
        [cal setAccumulator: 5];
        
        printObject(f1);
        printObject(c1);
        printObject(cal);
        */
        //dataValue = f1;
        //[dataValue print];
        //dataValue = c1;
        //[dataValue print];
    }
    return 0;
}
void printObject(id obj) {
    //if ([obj respondsToSelector:@selector(print)]){
    //    [obj print];
    //} else {
    //    NSLog(@"Object does not have a print method");
    //}
    @try {
        [obj print];
    } @catch (NSException *exception) {
        NSLog(@"Object does not have a print method");
    } @finally {
        NSLog(@"This always run papa");
    }
}
void testPrimitives(void) {
    int integerVar = 100;
    float floatingVar = 331.79;
    double doubleVar = 8.44e+11;
    char charVar = 'W';
    NSLog (@"integerVar = %i", integerVar);
    NSLog (@"floatingVar = %f", floatingVar);
    NSLog (@"doubleVar = %e", doubleVar);
    NSLog (@"doubleVar = %g", doubleVar);
    NSLog (@"charVar = %c", charVar);
}
void arithmeticOperators(void) {
    int a = 100;
    int b = 2;
    int c = 25;
    int d = 4;
    int result;
    result = a - b;
    NSLog(@"a - b = %i", result);
    result = b * c;
    NSLog(@"b * c = %i", result);
    result = a / c;
    NSLog(@"a / c = %i", result);
    result = a + b * c;
    NSLog (@"a + b * c = %i", result);
    NSLog (@"a * b + c * d = %i", a * b + c * d);
}
void integerArithmetic(void) {
    int a = 25;
    int b = 2;
    float c = 25.0;
    float d = 2.0;
    
    NSLog(@"6 + a / 5 * b = %i", 6 + a / 5 * b);
    NSLog(@"a / b * b = %i", a / b * b);
    NSLog(@"c / d * d = %f", c / d *d);
    NSLog(@"-a = %i", -a);
}
void implicitConversion(void){
    float f1 = 123.125, f2;
    int i1, i2 = -150;
    
    i1 = f1;
    
    NSLog(@"%f assigned to an int produces %i", f1, i1); f1 = i2;
    NSLog(@"%i assigned to a float produces %f", i2, f1); f1 = i2/100;
    NSLog(@"%i divided by 100 produces %f", i2, f1); f2 = i2/100.0;
    NSLog(@"%i divided by 100.0 produces %f", i2, f2); f2 = (float) i2 / 100;
    NSLog(@"(float) %i divided by 100 produces %f", i2, f2);
}
void testCalculator(void) {
    Calculator *deskCalc = [[Calculator alloc] init];
    double value1, value2;
    char operator;
    
    NSLog(@"Type in your expression.");
    scanf("%1f %c %1f", &value1, &operator, &value2);
    [deskCalc setAccumulator: value1];
    switch (operator){
        case '+':
            [deskCalc add: value2];
            break;
        case '-':
            [deskCalc substract: value2];
            break;
        case '*':
            [deskCalc multiply: value2];
            break;
        case '/':
            [deskCalc divide: value2];
            break;
        default:
            NSLog(@"Unknown operator.");
            break;
    }
    NSLog(@"%.2f", [deskCalc accumulator]);
}

/*
void menu (void) {
    //double value1, value2;
    //char operator;
    
    NSLog(@"Welcome to the Calculator App!");
    NSLog(@"To use the calculator enter a number\n");
    NSLog(@"follow by a space and the enter\n");
    NSLog(@"one of the following characters + - * / \n");
    NSLog(@"for addition, substraction, multiplication and division.\n");
    NSLog(@"Finally enter the second number.");
    //scanf("%f %c %f", &value1, &operator, &value2);
}

void getInput (void){
    double value1, value2;
    char operator;
    scanf("%1lf %c %1lf", &value1, &operator, &value2);
    calculate(value1, operator, value2);
}

void calculate(double value1, char operator, double value2){
    Calculator *calculator = [[Calculator alloc] init];
    [calculator setAccumulator:value1];
    
    switch(operator){
        case 'x':
            [calculator add:value2];
            break;
        case '-':
            [calculator substract:value2];
            break;
        case '*':
            [calculator multiply:value2];
            break;
        case '/':
            [calculator divide:value2];
            break;
        default:
            NSLog(@"Unknown operator.");
            break;
    }
}

void result (Calculator *calculator, double value1, char operator, double value2){
    NSLog(@"%f %c %f = %f", value1, operator, value2, [calculator accumulator]);
}
*/
