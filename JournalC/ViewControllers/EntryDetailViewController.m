//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Xavier on 10/29/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "XMWEntryController.h"

@interface EntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *entryTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation EntryDetailViewController
- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.entryTextField.text = @"";
    self.entryBodyTextView.text = @"";
    
}
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    if (_entry.title == nil && _entry.body == nil){
        [[XMWEntryController sharedInstance] addEntryWithTitle:self.entryTextField.text body:self.entryBodyTextView.text];
    } else {
        [[XMWEntryController sharedInstance] updateEntry:self.entry withNewTitle: self.entryTextField.text withNewbody:self.entryBodyTextView.text];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}



- (void)viewDidLoad {
    [super viewDidLoad];
}

//Equivalent to didSet in swift
-(void)setEntry:(XMWEntry *)entry {
    _entry = entry;
    [self updateViews];
}

-(void)updateViews {
    self.entryTextField.text = self.entry.title;
    self.entryBodyTextView.text = self.entry.body;
}



@end
