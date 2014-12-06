//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    // return nil;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *justCheeseName = @"";
    if (NSNotFound) {
        justCheeseName = cheeseName;
    }
    else {
        justCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    }
    return [NSString stringWithFormat:@"%@", justCheeseName];
    // return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        return [NSString stringWithFormat:@"%u cheese", (int)cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        return [NSString stringWithFormat:@"%u cheeses", (int)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    // return nil;
}

@end
