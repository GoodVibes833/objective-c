//  RETAIN CYCLE
//  main.m
//  ARCDemo
//
//  Created by Alex Jintak Han on 2018-09-18.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Apartment *myAprtment = [[Apartment alloc]initWithUnit:@"123"];
        Person *person = [[Person alloc]initWithName:@"Yuka"];

        myAprtment.tenant = person;
        person.apartment = myAprtment;
        
        
        NSLog(@"apartment created");
        NSLog(@"person created");

        
        myAprtment = nil;
        person = nil;
        
        
        
    }
    return 0;
}
