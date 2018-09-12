//
//  Prescription.m
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization andSymptom:(NSString *)symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _symptom = symptom;
    }
    return self;
}



@end
