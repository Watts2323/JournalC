//
//  XMWEntryController.m
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//
//CRUD FUNCTIONS

#import "XMWEntryController.h"
#import "XMWEntry.h"

@implementation XMWEntryController

//Shared Instance
+ (XMWEntryController *) shared {
    static XMWEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [XMWEntryController new];
    });
    return shared;
}

-(instancetype)init
{
     self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addEntryWithTitle:(NSString *)title body:(NSString *)bodyText {
    XMWEntry *entry = [[XMWEntry alloc] initWithTitle: title body: bodyText];
    //accessing our sharedInstance and its properties
    [[XMWEntryController sharedInstance].entries addObject:entry];
}

-(void) removeEntry:(XMWEntry *)entry {
    NSUInteger index = [[XMWEntryController sharedInstance].entries indexOfObject:entry];
    [[XMWEntryController sharedInstance].entries removeObject:entry];
}

-(void)updateEntry:(XMWEntry *)entry withNewTitle:(NSString *)newTitle withNewbody:(NSString *)newBody {
    entry.title = newTitle;
    entry.timestamp = [[NSDate alloc] init];
    entry.body = newBody;
}

@end
