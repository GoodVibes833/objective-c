//
//  Contact.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithId:(NSString *) id andName:(NSString *) name andEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _id = id;
        _name = name;
        _email = email;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Id: %@, Name: %@, Email: %@", self.id, self.name,self.email];
}
@end
