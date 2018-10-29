//
//  EntryDetailViewController.h
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMWEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

//Landing Pad, Now we can finish our segue using the entry from our landing pad
@property (strong, nonatomic) XMWEntry *entry;

-(void) updateViews;

@end

NS_ASSUME_NONNULL_END
