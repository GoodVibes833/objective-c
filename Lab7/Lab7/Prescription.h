//
//  Prescription.h
//  Lab7
//
//  Created by Alex Jintak Han on 2018-09-12.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,assign) NSString *specialization;
@property(nonatomic,assign) NSString *symptom;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization andSymptom:(NSString *)symptom;


@end
