//
//  SMSPasswordViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/7/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "SMSPasswordViewController.h"

@interface SMSPasswordViewController ()

@end

@implementation SMSPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
