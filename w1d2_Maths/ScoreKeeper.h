//
//  ScoreKeeper.h
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger numRight;
@property NSInteger numWrong;

- (NSString *)showScore;

@end
