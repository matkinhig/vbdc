//
//  LoginPinViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/6/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "LoginPinViewController.h"

@interface LoginPinViewController ()

@end

@implementation LoginPinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    operatorPressed = false;
    firstEntry = NULL;
    secondEntry = NULL;
}
- (IBAction)numberPress:(UIButton *)sender {
    int tag = sender.tag;
    if (operatorPressed == FALSE) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat:@"%i",tag];
            _lbOutPut.text = firstEntry;
        }
        else {
            firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,tag];
            _lbOutPut.text = firstEntry;
        }
    }
    else {
        NSLog(@"Nothing");
    }
}

@end
