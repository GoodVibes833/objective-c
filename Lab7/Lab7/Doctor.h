//
//  Doctor.h
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Doctor : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,assign) NSString *specialization;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
- (Boolean) acceptPatient:(Patient*) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication :(Patient *) patient;
@end
