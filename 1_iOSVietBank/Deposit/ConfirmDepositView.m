//
//  ConfirmDepositView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ConfirmDepositView.h"
#import "ResultDepositView.h"

@interface ConfirmDepositView ()

@end

@implementation ConfirmDepositView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)confirmPage:(id)sender {
    NSString * storyboardName = @"Main";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    ResultDepositView * resultView = [storyboard instantiateViewControllerWithIdentifier:@"ResultDepositView"];
    [self presentViewController:resultView animated:true completion:nil];
}

@end
