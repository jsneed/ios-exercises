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
    NSInteger lowNumber;
    NSInteger highNumber;
    NSMutableString* str = [NSMutableString stringWithString:@""];
    if(number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    }
    else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    while(lowNumber <= highNumber) {
        [str appendFormat:@"%ld", (long)lowNumber];
        lowNumber++;
    }
    return str;
}

@end
