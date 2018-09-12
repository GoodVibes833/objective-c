//
//  main.m
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *patientWithCard = [[Patient new] initWithName:@"Alex" andAge:28 andHealthCard:true andSymptom:@"@cold"];
        Patient *patientWithoutCard = [[Patient new] initWithName:@"Han" andAge:28 andHealthCard:false andSymptom:@"@cold"];
        Doctor *doctor =[[Doctor new]initWithName:@"javior" andSpecialization:@"surgion"];
        
        [patientWithCard visitDoctor:doctor];
        [patientWithoutCard visitDoctor:doctor];
        [patientWithCard requestMedication:doctor];
        
        [doctor prescribeMedication:patientWithCard];
        [doctor prescribeMedication:patientWithoutCard];
        


        
    }
    return 0;
}
