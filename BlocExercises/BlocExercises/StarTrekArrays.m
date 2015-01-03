//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    /* HC 26.12.2014
     Converts a string containing multiple Star Trek characters into an array of said characters.
     @param characterString A semicolon-separated string of characters like @"Troi;Riker;Kirk;Janeway"
     @return An array of characters, like @[@"Troi", @"Riker", @"Kirk", @"Janeway"]
     */
    
    NSArray *arrayStarTrekCharacters = [characterString componentsSeparatedByString: @";"];
    return arrayStarTrekCharacters;
    
    /* return @[]; */
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    /* HC 26.12.2014
     Converts an array of multiple Star Trek characters into a semicolon-separated string of said characters.
     @param characterArray An array of characters like @[@"McCoy", @"Tuvok"]
     @return A semicolon-separated string like @"McCoy;Tuvok".
     */
    
    NSString *stringStarTrekCharacters = [characterArray componentsJoinedByString: @";"];
    return stringStarTrekCharacters;
    
    /* return @""; */
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    /* HC 26.12.2014
     Returns an array of alphabetically sorted character names.
     @param characterArray An array of unsorted character names, like @[@"Wesley", @"Q"].
     @return A sorted array, like @[@"Q", @"Wesley"].
     */
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *alphabeticallySortedStarTrekCharacters = [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    return alphabeticallySortedStarTrekCharacters;
    
    /* return @[]; */
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    /*HC 26.12.2014
     Indicates whether the provided array of Star Trek characters contains Worf.
     @param characterArray An array of character names.
     @note Worf should be detected anywhere in the string, in any case.  For example, @"lieutenant commander worf" and @"WORF THE KLINGON" should both cause this method to return @c YES.
     @return @c YES if Worf is present in the array, or @c NO if he is not.
     */
    
    /* Another solution
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    NSArray *myArray = [characterArray filteredArrayUsingPredicate:containsWorf];
    BOOL thereIsWorf = NO;
    for (NSInteger i = 0; (i < myArray.count && thereIsWorf == NO); i++) {
        thereIsWorf = [characterArray containsObject: myArray[i]];
    }
    return thereIsWorf;
    */
     
    /* Used solution in the course*/
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    NSArray *myArray = [characterArray filteredArrayUsingPredicate:containsWorf];
    if (myArray.count > 0) {
        return YES;
    }
    return NO;
    
}

@end
