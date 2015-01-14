//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.rememberArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    /* The new array should be another instace */
    
    NSMutableArray *sameArray = [NSMutableArray arrayWithObjects:nil];
    for (NSString *item in arrayToCopy) {
        [sameArray addObject:item];
    }
    self.rememberArray = sameArray;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    
    self.rememberFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    
    return self.rememberArray;
    
    // return [@[] mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    
    return self.rememberArray;
    
    // return [@[] mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    
    return self.rememberFloat;
    
    // return 0.0f;
}

@end