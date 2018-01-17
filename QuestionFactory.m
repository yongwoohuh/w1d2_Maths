//
//  QuestionFactory.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion
{
    int randomIndex = arc4random_uniform(4);
    NSString *questionType = [self.questionSubclassNames objectAtIndex:randomIndex];
    
    return [[NSClassFromString(questionType) alloc]init];
}

@end
