//
//  TerminalDepositView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "TerminalDepositView.h"
#import "SignTerminalDepositView.h"

@interface TerminalDepositView ()

@end

@implementation TerminalDepositView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lbNameTerm.text = self.tmpNameTerm;
}
- (IBAction)terminalPage:(id)sender {
    SignTerminalDepositView * signView = [self.storyboard instantiateViewControllerWithIdentifier:@"SignTerminalDepositView"];
    signView.tmpNameTerm = self.tmpNameTerm;
    [self presentViewController:signView animated:true completion:nil];
}



@end
