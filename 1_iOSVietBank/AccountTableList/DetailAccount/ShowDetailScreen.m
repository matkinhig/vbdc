//
//  ShowDetailScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/10/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ShowDetailScreen.h"
#import "ShowTransactionScreen.h"
#import "UIViewController+LCModal.h"
#import "../../Dashboard/DashBoardViewController.h"
#import "../../Transaction/CitadInputScreen.h"

@interface ShowDetailScreen ()
@property (strong, nonatomic) IBOutlet UILabel *accountName;
@property (strong, nonatomic) IBOutlet UILabel *accountNumber;
@property (strong, nonatomic) IBOutlet UILabel *accountAmount;
@property (strong, nonatomic) IBOutlet UILabel *amout;
@property (strong,nonatomic) DashBoardViewController * DBView;
@property (strong,nonatomic) CitadInputScreen * citadView;
@end

@implementation ShowDetailScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.accountNumber.text = self.stringAccountNumber;
    self.accountName.text = self.stringAccountName;
    self.accountAmount.text = self.stringAmount;
    self.amout.text = self.stringAmount;
}
- (IBAction)sendMoney:(id)sender {
   
}
- (IBAction)touchUpShow:(id)sender {
   
}



@end
