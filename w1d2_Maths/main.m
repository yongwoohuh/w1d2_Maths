//
//  main.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManger.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManger *questionManger = [[QuestionManger alloc] init];
        
        NSLog(@"MATHS!");
        while(gameOn) {
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            [questionManger.questions addObject:question];
            NSString *result = [InputHandler getUserInput];
            if([result isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            if ( [result integerValue] == question.answer) {
                NSLog(@"Right!");
                [scoreKeeper setNumRight: scoreKeeper.numRight + 1];
                NSLog(@"%@", scoreKeeper.showScore);
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper setNumWrong:scoreKeeper.numWrong + 1];
                NSLog(@"%@", scoreKeeper.showScore);
            }
            NSLog(@"%@",[questionManger timeOutput]);
        }
    }
    
    return 0;
}
