//
//  EntryListTableViewController.m
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "XMWEntryController.h"
#import "XMWEntry.h"
#import "EntryDetailViewController.h"


@interface EntryListTableViewController ()

@property (nonatomic) NSString *destinationVC;

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return XMWEntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"journalCell" forIndexPath:indexPath];
    
    XMWEntry *entry = XMWEntryController.sharedInstance.entries[indexPath.row];
    // Configure the cell...
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = @"%@"; entry.timestamp;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        XMWEntry *entry = XMWEntryController.sharedInstance.entries[indexPath.row];
        [[XMWEntryController sharedInstance] removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"toShowEntry"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        EntryDetailViewController *destinationVC =
        segue.destinationViewController;
        destinationVC.entry = [[XMWEntryController sharedInstance].entries objectAtIndex:indexPath.row];
        
        // Get the new view controller using [segue destinationViewController].
           // Pass the selected object to the new view controller.
    }
}

- (IBAction)addButtonTapped:(UIBarButtonItem *)sender {
}
@end
