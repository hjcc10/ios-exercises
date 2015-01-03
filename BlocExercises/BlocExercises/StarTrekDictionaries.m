//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    /* HC 28.12.2014 */
    /* 
    Determines the favorite drink of a given Star Trek character.
    Example @c characterDictionary:
    @code
    {
        "name": "Nog",
        "rank": "Lieutenant junior grade",
        "information": "the first Ferengi to enter Starfleet",
        "favorite drink": "root beer",
        "quote": "Hear all, trust nothing."
    }
    @endcode
    Example expected output: @"root beer"
    @param characterDictionary An NSDictionary containing values for one or more of these keys: @"name", @"rank", @"information", @"favorite drink", and @"quote".
    @return The character's favorite drink, or @c nil if it's not provided.
    */
    
    id favoriteDrinkOfStarTrekCharacter = characterDictionary [@"favorite drink"];
    if (favoriteDrinkOfStarTrekCharacter != nil && [favoriteDrinkOfStarTrekCharacter isKindOfClass:[NSString class]]) {
        return favoriteDrinkOfStarTrekCharacter;
    }
    else {
        return nil;
    }
    
    /* return @""; */
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    /* HC 28.12.2014 */
    /*
     Determines the favorite drinks of an array of given Star Trek characters.  Useful for party planning.
     @param charactersArray An array of dictionaries as defined in @c favoriteDrinkForStarTrekCharacterDictionary:.
     @return An array of favorite drinks.
     */
    
    NSMutableArray *arrayOfFavoriteDrinks = [NSMutableArray arrayWithObjects:nil];
    __block NSInteger ind = 0;
    for (NSDictionary *dictionaryForStarTrekCharacters in charactersArray) {
        [dictionaryForStarTrekCharacters enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            if ([key isEqual: @"favorite drink"]) {
                // fill in the array
                [arrayOfFavoriteDrinks insertObject:obj atIndex:ind];
                ind = ind + 1;
            }
        }];
    }
    return arrayOfFavoriteDrinks;
    
    /* return @[]; */
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    /* HC 03.01.2015 */
    /*
     Adds a quote to an existing character.
     @param characterDictionary A dictionary as defined in @c favoriteDrinkForStarTrekCharacterDictionary: without a value for @"quote".
     @return A dictionary containing all of the key/value pairs provided, plus a memorable quote.
    */
    NSMutableDictionary *dictionaryWithQuote = [NSMutableDictionary dictionaryWithObjectsAndKeys:nil];
    [dictionaryWithQuote addEntriesFromDictionary:characterDictionary];
    [dictionaryWithQuote setObject:@"Memorable quote" forKey:@"quote"];
    return dictionaryWithQuote;
    
    /* return @{}; */
}

@end
