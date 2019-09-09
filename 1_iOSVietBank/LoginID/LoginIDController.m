//
//  LoginIDController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/4/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "LoginIDController.h"

@interface LoginIDController ()
@property (weak, nonatomic) IBOutlet UITextField *txtLoginID;
@property (weak, nonatomic) IBOutlet UIButton *btnNextID;


@end

@implementation LoginIDController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title  = @"XINCHAO";
    // Do any additional
    self.btnNextID.enabled = true;
    self.txtLoginID.delegate = self;
    
}
- (void) textFieldDidEndEditing:(UITextField *)textField{
    if (self.txtLoginID.text.length > 0) {
        self.btnNextID.enabled = true;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
