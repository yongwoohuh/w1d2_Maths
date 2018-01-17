//
//  main.m
//  w1d2_Maths
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!");
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        
        while(gameOn) {
            Question *question = [questionFactory generateRandomQuestion];
            NSLog(@"%@", question.question);
            [questionManager.questions addObject:question];
            NSString *result = [inputHandler getUserInput];
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
            NSLog(@"%@",[questionManager timeOutput]);
        }
    }
    
    return 0;
}
