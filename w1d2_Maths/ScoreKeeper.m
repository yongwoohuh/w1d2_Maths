//
//  ScoreKeeper.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numRight = 0;
        _numWrong = 0;
    }
    return self;
}

- (void)showScore
{
    NSLog(@"score: %ld right, %ld wrong --- %.2f %%", self.numRight, self.numWrong,
          (float)self.numRight / (float)(self.numRight + self.numWrong) * 100.0 );
}
@end
