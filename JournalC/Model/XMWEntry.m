//
//  XMWEntry.m
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "XMWEntry.h"

@implementation XMWEntry

-(instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
        //Defualt value
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
