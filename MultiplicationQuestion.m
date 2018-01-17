//
//  MultiplicationQuestion.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion
{
    super.question = [NSString stringWithFormat:@"(Enter 'quit' to exit) %ld * %ld?", super.rightValue, super.leftValue];
    super.answer = super.rightValue * super.leftValue;
}

@end
