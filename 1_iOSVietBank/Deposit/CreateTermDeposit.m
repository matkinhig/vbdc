//
//  CreateTermDeposit.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CreateTermDeposit.h"
#import "ConfirmDepositView.h"

@interface CreateTermDeposit ()

@end

@implementation CreateTermDeposit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
- (IBAction)changePage:(id)sender {
    ConfirmDepositView * confirmView = [self.storyboard instantiateViewControllerWithIdentifier:@"ConfirmDepositView"];
    [self presentViewController:confirmView animated:true completion:nil];
}

@end
