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
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *arr = [NSMutableArray array];
    for (NSDictionary* dic in charactersArray) {
        [arr addObject:dic[@"favorite drink"]];
    }
    return arr;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *cDictionary = [(NSDictionary*)characterDictionary mutableCopy];
    [cDictionary setObject:@"Blargh" forKey:@"quote"];
    return cDictionary;
}

@end
