//
//  main.m
//  DP
//
//  Created by Auston Salvana on 7/2/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc]init];
        
        Doctor*doctor2Patient = [[Patient alloc]init];
        
        [doctor2Patient visitDoctor];
    
        if ([doctor question2] == YES) {
            NSLog(@"Doctor: Yes Very Good");
            doctor.acceptedCount++;
            NSLog(@"%d Patient has been added to files", doctor.acceptedCount);
            [doctor2Patient requestMedication];
            [doctor2Patient question3];
            NSLog(@"file: %@", doctor.prescriptions);
        }
        else{
            NSLog(@"Sorry Can't help you...");
        }
        
        
    }
    return 0;
}
