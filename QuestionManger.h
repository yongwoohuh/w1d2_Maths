//
//  QuestionManger.h
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManger : NSObject

@property (nonatomic)NSMutableArray *questions;

- (NSString *)timeOutput;

@end
