//
//  Doctor.m
//  DP
//
//  Created by Auston Salvana on 7/2/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor{
    char answer[100];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.prescriptions = [[NSMutableDictionary alloc]init];
    }
    return self;
}

-(void)question{
    NSLog(@"Doctor: age and weight please");
    fgets(answer, 100, stdin);
    self.reply = [NSString stringWithFormat:@"%s",answer];
    NSLog(@"%@",self.reply);
}

-(BOOL)question2{
    NSLog(@"Doctor: Do you have a Health Card?");
    fgets(answer, 100, stdin);
    self.reply = [NSString stringWithFormat:@"%s",answer];
    
    return [self.reply isEqualToString:@"yes\n"];
}

-(void)visitDoctor{
    NSLog(@"doctor");
}

-(void)requestMedication{
    //silence warning
}

-(void)question3{
    NSLog(@"what are your symptoms");
    fgets(answer, 100, stdin);
    self.reply = [NSString stringWithFormat:@"%s",answer];
    if ([self.reply isEqualToString:@"pain\n"]) {
        NSLog(@"here is some: tylenol");
        [self.prescriptions setObject:@"here is some: tylenol" forKey:@"Patient1"];
    }
    else if ([self.reply isEqualToString:@"sweat\n"]){
        NSLog(@"take a shower");
        
        [self.prescriptions setObject:@"take a shower" forKey:@"Patient1"];
    }
    else if ([self.reply isEqualToString:@"trauma\n"]){
        NSLog(@"here are some depression pills");
        [self.prescriptions setObject:@"here are some depression pills" forKey:@"Patient1"];
    }
    
}

@end
