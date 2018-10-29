//
//  XMWEntry.h
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import <Foundation/Foundation.h>

//NS_ASSUME_NONNULL_BEGIN

@interface XMWEntry : NSObject

@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *body;
@property (nonatomic, copy)NSDate *timestamp;

-(instancetype)initWithTitle: (NSString *)title body:(NSString *)body;

@end

//NS_ASSUME_NONNULL_END
