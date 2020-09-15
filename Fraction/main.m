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

//void menu(void);
//void getInput (void);
//void calculate(double value1, char operator, double value2);
//void result(Calculator *calculator, double value1, char operator, double value2);
void testPrimitives(void);
void arithmeticOperators(void);
void integerArithmetic(void);
void implicitConversion(void);
void testCalculator(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Developer Alvaro Alva");
        char done = 'n';
        do{
            menu();
            getInput();
            NSLog(@"Do another calculation?");
            scanf("%c", &done);
        } while(done != 'y');
        
    }
    return 0;
}

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
