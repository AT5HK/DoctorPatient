//
//  Doctor.h
//  DP
//
//  Created by Auston Salvana on 7/2/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject
@property (nonatomic) NSString *reply;
@property (nonatomic) int acceptedCount;
@property (nonatomic, strong) NSMutableDictionary *prescriptions;

-(void)question;
-(BOOL)question2;
-(void)visitDoctor;
-(void)requestMedication;
-(void)question3;

@end
