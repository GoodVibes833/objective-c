//
//  ContactList.h
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"



@interface ContactList : NSObject
@property (nonatomic, strong) NSMutableArray *contactList;

- (void) addContact: (Contact *) newContact;
- (NSString *) findId: (NSString *) inputId;
- (NSString *) findName: (NSString *) inputName;

@end
