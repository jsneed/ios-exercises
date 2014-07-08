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
    return @([number floatValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *arr = [NSMutableArray array];
    
    NSInteger lowNumber;
    NSInteger highNumber;
    if(number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    }
    else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    while (lowNumber <= highNumber) {
        [arr addObject:[NSNumber numberWithInt:lowNumber]];
        lowNumber++;
    }
    return arr;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *numb = nil;
    for (NSNumber *j in arrayOfNumbers) {
        if([j intValue] < [numb intValue]) {
            numb = j;
        }
    }
    return [numb intValue];
}

@end
