//
//  WSRootView.m
//  WSKeyboardBeGone
//
//  Created by Jeff Regan on 8/2/13.
//  Copyright (c) 2013 Wired Software. All rights reserved.
//

#import "WSRootView.h"

@interface WSRootView()

@end

@implementation WSRootView
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        CGFloat width = frame.size.width;
        CGFloat xPadding = 20.0;
        
        //first text field
        UITextField *txtOne = [[UITextField alloc] initWithFrame:CGRectMake(xPadding, 30.0, width - (2 * xPadding), 30.0)];
        [txtOne setBorderStyle:UITextBorderStyleLine];
        [txtOne setPlaceholder:@"My Text"];
        [self addSubview:txtOne];
        
        //second text field
        UITextField *txtTwo = [[UITextField alloc] initWithFrame:CGRectMake(xPadding, txtOne.frame.origin.y + txtOne.frame.size.height + 30.0, width - (2 * xPadding), 30.0)];
        [txtTwo setBorderStyle:UITextBorderStyleLine];
        [txtTwo setPlaceholder:@"Also My Text"];
        [self addSubview:txtTwo];
        
        //spot that doesn't dismiss keyboard
        self.vSpotThatDoesNotDismissKeyboard = [[UIView alloc] initWithFrame:CGRectMake(xPadding, txtTwo.frame.origin.y + txtTwo.frame.size.height + 30.0, width - (2 * xPadding), 30.0)];
        [self.vSpotThatDoesNotDismissKeyboard setBackgroundColor:[UIColor blueColor]];
        [self addSubview:self.vSpotThatDoesNotDismissKeyboard];
        
        //add a label to the spot that doesn't dismiss keyboard for clarity
        UILabel *lblOne = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 5.0, self.vSpotThatDoesNotDismissKeyboard.frame.size.width - 10.0, 20.0)];
        [lblOne setTextAlignment:NSTextAlignmentCenter];
        [lblOne setText:@"I Won't Dismiss The Keyboard"];
        [lblOne setFont:[UIFont systemFontOfSize:17.0]];
        [self.vSpotThatDoesNotDismissKeyboard addSubview:lblOne];
    }
    
    return self;
}
@end
