//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    /*
     Doubles a number.
     @param number An NSNumber.
     @return An NSNumber with double the value of the provided NSNumber.
     */
    
    CGFloat myNumber = [number floatValue]; //unboxing
    NSNumber *myDoubleNumber = [NSNumber numberWithFloat:(myNumber * 2)]; //calculation and boxing
    return myDoubleNumber;
    
    /* return @0; */
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    /*
     Creates an array of NSNumbers between two integers, inclusively.
     @param number       A number at one end of the range.
     @param otherNumber  The number at the other end of the range.
     @note Either @c number or @c otherNumber may be the lower number, but the string always includes numbers from lowest to highest.
     @return An array of NSNumbers between two integers, inclusively.
     */
    
    NSInteger lowerNumber = 0;
    NSInteger higherNumber = 0;
    NSInteger integerArray = 0;
    NSNumber *numberArray = [NSNumber numberWithInt:0];
    NSMutableArray *mArrayOfNumbers = [NSMutableArray arrayWithObjects: nil];
    NSArray *arrayOfNumbers =[NSArray arrayWithObjects: nil];
    
    if (number <= otherNumber) {
        lowerNumber = number;
    }
    else {
        lowerNumber = otherNumber;
    }
    integerArray = lowerNumber;
    higherNumber = otherNumber;
    
    while (integerArray <= higherNumber) {
        numberArray = [NSNumber numberWithInteger:integerArray];
        [mArrayOfNumbers addObject:numberArray];
        ++integerArray;
    }
    arrayOfNumbers = [mArrayOfNumbers mutableCopy];
    
    return arrayOfNumbers;
    
    /* return @[]; */
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    /*
     Returns the lowest number in an array.
     @param arrayOfNumbers An array of NSNumbers.
     @return The lowest number in the array as an NSInteger.
     */
    NSInteger lowestNumber = 0;
    NSInteger integerItem = 0;
    
    for (NSInteger ind = 0; ind < [arrayOfNumbers count]; ind++) {
        integerItem = [arrayOfNumbers[ind] integerValue];
        if (ind == 0) {
            lowestNumber = integerItem;
        }
        if (integerItem < lowestNumber) {
            lowestNumber = integerItem;
        }
    }
    return lowestNumber;
    
    /* return 0; */
}

@end
