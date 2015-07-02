//
//  Patient.m
//  DP
//
//  Created by Auston Salvana on 7/2/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "Patient.h"

@implementation Patient{
    char answer[100];
}


-(void)question{
    NSLog(@"Patient: What is your name and specialization?");
    fgets(answer, 100, stdin);
    self.reply = [NSString stringWithFormat:@"%s",answer];
    NSLog(@"%@",self.reply);
}

-(void)visitDoctor{
    NSLog(@"Patient: My knee is broken can I get help!??!");
}

-(void)requestMedication{
    NSLog(@"Gib me MEDICATION!?!");
}

@end
