//
//  LoginPinViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/6/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "LoginPinViewController.h"

@interface LoginPinViewController ()
@property (strong, nonatomic) IBOutlet UIButton *btnDelete;
@property (strong, nonatomic) NSString *myPickerValue;
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
    if (firstEntry == NULL) {
        firstEntry = [NSString stringWithFormat:@"%i",(int)sender.tag];
        self.myPickerValue = firstEntry;
        self.lbOutPut.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", _lbOutPut.text);
    }
    else {
        firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,(int)sender.tag];
        _lbOutPut.text = firstEntry;
        self.myPickerValue = firstEntry;
        self.lbOutPut.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", _lbOutPut.text);
    }
}
- (IBAction)deleteText:(id)sender {
    firstEntry = NULL;
    _lbOutPut.text = NULL;
}

@end
