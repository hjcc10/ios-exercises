//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowestNumber = 0;
    NSInteger highestNumber = 0;
    NSString *stringFinal = @"";
    NSString *stringPartial = @"";
    
    if (number < otherNumber) {
        lowestNumber = number;
        highestNumber = otherNumber;
    } else {
        lowestNumber = otherNumber;
        highestNumber = number;
    }
    
    for (NSInteger counter = lowestNumber; counter <= highestNumber; ++counter) {
        stringPartial = [NSString stringWithFormat:@"%ld", counter];
        stringFinal = [stringFinal stringByAppendingString: stringPartial];
    }
    return stringFinal;
    
    // return @"";
}

@end
