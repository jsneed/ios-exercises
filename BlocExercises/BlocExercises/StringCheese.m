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
    NSMutableString *cheeseStatement = [NSMutableString stringWithString:@"My favorite cheese is "];
    [cheeseStatement appendString:cheeseName];
    [cheeseStatement appendString:@"."];
    return cheeseStatement;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *statement;
    if(cheeseRange.location == NSNotFound) {
        statement = cheeseName;
    }
    else statement = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return statement;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *statement;
    if (cheeseCount > 1) {
        statement = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    else {
        statement = @"1 cheese";
    }
    return statement;
}

@end
