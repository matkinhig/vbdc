//
//  PayBillSignView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/27/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "PayBillSignView.h"
#import "PayBillStatusView.h"
#import "../AccountTableList/DetailAccount/UIViewController+LCModal.h"

@interface PayBillSignView () <PayBillStatusView>

@end

@implementation PayBillSignView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)changeView:(id)sender {
    PayBillStatusView *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"signScreenBill"];
    controller.view.frame = CGRectMake(0, 0, self.view.frame.size.width ,250);
    controller.delegate = self;
    [self lc_presentViewController:controller completion:nil];
}
- (void)didPressedButtonInController:(PayBillStatusView *)controller {
    [self lc_dismissViewControllerWithCompletion:nil];
}



@end
