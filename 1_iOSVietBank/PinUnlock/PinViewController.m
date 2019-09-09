//
//  PinViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "PinViewController.h"

@interface PinViewController ()

@end

@implementation PinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"daqua");
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
        
    }
}

@end
