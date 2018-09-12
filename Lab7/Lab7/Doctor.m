//
//  Doctor.m
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Doctor.h"
#import "Prescription.h"

@interface Doctor(){
    
@private
    NSMutableArray *patientList;
    NSMutableArray *prescriptionList;

}
@end

@interface Prescription(){
    
}
@end

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        prescriptionList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient:(Patient*) patient withHealthCard: (Boolean) healthCard{
 
    if(healthCard){
        [patientList addObject:patient];
        NSLog(@"successfully added to the patient list");
        return true;
    }else{
        NSLog(@"Invalid health Card");
        return false;
    }
    }

- (Boolean) prescribeMedication : (Patient *) patient{
    if([patientList containsObject:patient]){
        NSLog(@"Medication on the way...");
        // 1. check the symptom
        [patient symptom];
        // 2. create a prescription based on symptom
        Prescription *pre = [[Prescription new]initWithName:[patient name] andSpecialization:_specialization andSymptom:[patient symptom]];
        
        // 3. give the prescription to the patient
        [prescriptionList addObject:pre];
        [[patient prescriptionList] addObject:pre];
        
        // 4. give the medication.
        [self giveMedication:pre];
        
        return true;
    }else{
        NSLog(@"You are not my patient");
        return false;
    }
}

- (Boolean) giveMedication : (Prescription *) prescription{
    if([prescriptionList containsObject:prescription]){
        NSLog(@"Patient got medication!");
        return true;
    }else{
        NSLog(@"this doctor did not issue the prescription");
        return false;
    }
    
}

@end
