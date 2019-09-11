//
//  ShowDetailScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/10/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ShowDetailScreen.h"

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
