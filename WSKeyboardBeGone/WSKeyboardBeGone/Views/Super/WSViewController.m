//
//  WSViewController.m
//  WSKeyboardBeGone
//
//  Created by Jeff Regan on 8/2/13.
//  Copyright (c) 2013 Wired Software. All rights reserved.
//

#import "WSViewController.h"

@implementation WSViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    
    //add a tap gesture recognizer to capture all tap events
    //this will include tap events when a user clicks off of a textfield
    self.tgrBackground = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onBackgroundTap:)];
    self.tgrBackground.numberOfTapsRequired = 1;
    self.tgrBackground.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:self.tgrBackground];
}
- (void)onBackgroundTap:(id)sender{
    //when the tap gesture recognizer gets an event, it calls endEditing on the view controller's view
    //this should dismiss the keyboard
    [[self view] endEditing:YES];
}
@end
