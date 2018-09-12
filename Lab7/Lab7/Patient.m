//
//  Patient.m
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Patient.h"

@interface Patient(){
    @private
    Boolean healthCard;
}
@end

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger)age andHealthCard:(Boolean)card andSymptom:(NSString *)symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
        _symptom = symptom;
        _prescriptionList = [NSMutableArray new];

    }
    return self;
}


- (Boolean) visitDoctor: (Doctor*) doctor{
    return [doctor acceptPatient: self withHealthCard:healthCard];
}

- (void) requestMedication: (Doctor *) doctor{
    //1. doctor
    if([doctor prescribeMedication:self]){
        NSLog(@"got the medication!");
    }else{
        NSLog(@"rejected ! : no medication!");

    }
}

@end
