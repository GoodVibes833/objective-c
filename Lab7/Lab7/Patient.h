//
//  Patient.h
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;
@interface Patient : NSObject

@property(nonatomic,assign) NSUInteger age;
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *symptom;
@property(nonatomic,strong) NSMutableArray *prescriptionList;


- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger)age andHealthCard:(Boolean)card andSymptom:(NSString *)symptom;

- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;

@end
