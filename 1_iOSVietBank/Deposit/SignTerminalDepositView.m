//
//  SignTerminalDepositView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "SignTerminalDepositView.h"
#import "../Menu/MenuLeftView.h"

@interface SignTerminalDepositView ()

@end

@implementation SignTerminalDepositView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lbNameTerm.text = self.tmpNameTerm;
}
- (IBAction)signPage:(id)sender {
    NSString * storyboardName = @"Main";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    MenuLeftView * menuView = [storyboard instantiateViewControllerWithIdentifier:@"MenuLeftView"];
    [self presentViewController:menuView animated:true completion:nil];
}



@end
