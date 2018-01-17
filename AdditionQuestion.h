//
//  AdditionQuestion.h
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (NSTimeInterval)answerTime;

@end
