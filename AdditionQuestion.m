//
//  AdditionQuestion.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        // radom number between max and min : arc4random_unifrom(max - min + 1) + min
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;
        _answer = num1 + num2;
        
        _startTime = [NSDate date];
        
        _question = [NSString stringWithFormat:@"%ld + %ld?", num1, num2];
        NSLog(@"%@", _question);
        NSLog(@"Enter 'quit' to exit");
    }
    return self;
}

// overriding getter
- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime
{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
