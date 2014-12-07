//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    BOOL areTheStringsEqual = [string1 isEqualToString:string2];
    return areTheStringsEqual;
    //return (string1 == string2);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL areTheNumbersEqual = [number1 isEqualToNumber:number2];
    return areTheNumbersEqual;
    //return (number1 == number2);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    if (integer1 > integer2) {
        return YES;
    }
    else {
        return NO;
    }
    // return NO;
}

@end
