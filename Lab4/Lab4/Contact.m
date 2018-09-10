//
//  Contact.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *) name andEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Name: %@, Email: %@",self.name,self.email];
}
@end
