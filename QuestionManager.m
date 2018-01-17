//
//  QuestionManager.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput
{
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    
    for (Question *question in self.questions) {
        totalTime += question.answerTime;
    }
    averageTime = totalTime / [self.questions count];
    
    return [NSString stringWithFormat:@"total time: %.0fs average time: %.0f", totalTime, averageTime];
}

@end
