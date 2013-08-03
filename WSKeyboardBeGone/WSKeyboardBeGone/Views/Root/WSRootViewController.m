//
//  WSRootViewController.m
//  WSKeyboardBeGone
//
//  Created by Jeff Regan on 8/2/13.
//  Copyright (c) 2013 Wired Software. All rights reserved.
//

#import "WSRootViewController.h"
#import "WSRootView.h"

@interface WSRootViewController()
@property(strong, nonatomic) WSRootView *vRoot;
@end

@implementation WSRootViewController
-(void)viewDidLoad {
    [super viewDidLoad];
    
    //init the view and add it to the frame
    self.vRoot = [[WSRootView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.vRoot];
    
    //the the view controller as the delegate for the tap recognizer declared in the super view
    [self.tgrBackground setDelegate:self];
}


//TAP BACKGROUND RECOGNIZER DELEGATION
//===========================================================================
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    //touch.view is the view that recieved the touch
    //if this view is another textfield or maybe a button, you can return NO and the endEditing call won't be made
    if (touch.view == self.vRoot.vSpotThatDoesNotDismissKeyboard) {
        return NO;
    }
    
    //if you want the gesture recognizer to accept the event, return yest
    return YES;
}
@end
