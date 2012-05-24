//
//  SUIViewController.m
//  SimpleUI
//
//  Created by user 1 on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SUIViewController.h"

@interface SUIViewController ()

@end

@implementation SUIViewController
@synthesize aTextField = _aTextField;
@synthesize aLabel = _aLabel;
- (IBAction)buttonPressed:(UIButton *)sender {
    self.aLabel.text = self.aTextField.text;
    [self.aTextField setText:@""];
    
}

@end
