//
//  XMWEntryController.h
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMWEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface XMWEntryController : NSObject

//Shared Truth
@property (nonatomic) NSMutableArray *entries;
@property (nonatomic) NSMutableDictionary *entriesDictionary;

-(void)addEntryWithTitle:(XMWEntry *)title body:(NSString *)bodyText;
-(void)removeEntry:(XMWEntry *)entry;
-(void)updateEntry:(XMWEntry *)entry withNewTitle:(NSString *)newTitle withNewbody:(NSString *)newBody;

//Shared Instance
+(XMWEntryController *)sharedInstance;



@end

NS_ASSUME_NONNULL_END
