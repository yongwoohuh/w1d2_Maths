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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *s1 = [[ScoreKeeper alloc] init];
        
        NSLog(@"MATHS!");
        while(gameOn) {
            AdditionQuestion *game1 = [[AdditionQuestion alloc] init];
            NSString *result = [InputHandler getUserInput];
            if([result isEqualToString:@"q"]) {
                gameOn = NO;
            } else if ( [result integerValue] == game1.answer) {
                NSLog(@"Right!");
                [s1 setNumRight: s1.numRight + 1];
                [s1 showScore];
            } else if ( [result integerValue] != game1.answer){
                NSLog(@"Wrong!");
                [s1 setNumWrong:s1.numWrong + 1];
                [s1 showScore];
            }
        }
    }
    
    return 0;
}
