//
//  main.m
//  Lab4
//
//  Created by Alex Jintak Han on 2018-09-07.
//  Copyright © 2018 AlexHan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"
#import "History.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        History *historyList = [[History alloc] init];
        
        while(true){

        NSString *menu = @"What would you like to do next? new? list ?";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            if([option isEqualToString:@"quit"]){
                break;
                
            }else if ([option isEqualToString:@"new"]){
//                1. get user input for name and email
                NSString *id = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the id : "];
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name : "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email : "];
            
                
//                2. create a contact object based od the user input
                Contact *newContact = [[Contact alloc] initWithId:id andName:name andEmail:email];

//                3. add the contact to Contactlist's contact list
                [contactList addContact:newContact];
                [historyList addCommand:@"new"];

            }else if([option isEqualToString:@"list"]){
                NSLog(@"\n%@",contactList);
                [historyList addCommand:@"list"];
//
            }else if([option isEqualToString:@"show"]){
                NSString *id = [InputHandler getUserInputWithLength:255 withPrompt:@"id to show : "];
//                1. find the id's name and email
                [contactList findId:id];
                [historyList addCommand:@"show"];

            }else if([option isEqualToString:@"find"]){
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"name to find : "];
                [contactList findName:name];
                [historyList addCommand:@"find"];

            }else if([option isEqualToString:@"history"]){
                NSLog(@"\n%@",historyList);
                [historyList addCommand:@"history"];

            }
            
            
       }

    }
    return 0;
}

