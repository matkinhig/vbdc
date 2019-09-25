//
//  ShowDetailScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/10/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ShowDetailScreen.h"
#import "UIViewController+LCModal.h"
#import "../../Dashboard/DarhBoardAccounts/DBView.h"
#import "../../Card/TemplateTableView.h"


@interface ShowDetailScreen ()
@property (strong, nonatomic) IBOutlet UILabel *accountName;
@property (strong, nonatomic) IBOutlet UILabel *accountNumber;
@property (strong, nonatomic) IBOutlet UILabel *accountAmount;
@property (strong, nonatomic) IBOutlet UILabel *amout;
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
    DBView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"DBView1"];
    [self presentViewController:newView animated:YES completion:nil];
}
- (IBAction)touchUpShow:(id)sender {
   
}



@end
