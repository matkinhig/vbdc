//
//  CitadConfirmScreen.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CitadConfirmScreen : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imgAccount;
@property (strong, nonatomic) IBOutlet UILabel *lbAccount;
@property (strong, nonatomic) IBOutlet UILabel *lbVND;
@property (strong, nonatomic) IBOutlet UILabel *lbAmount;
@property (strong, nonatomic) IBOutlet UILabel *lbToday;
@property (strong, nonatomic) IBOutlet UILabel *lbPaytemp;
@property (strong, nonatomic) IBOutlet UIImageView *imgTranfer;
@property (strong, nonatomic) IBOutlet UILabel *lbCitad;
@property (strong, nonatomic) IBOutlet UILabel *lbAccNumber;
@property (strong, nonatomic) IBOutlet UILabel *lbBankname;
@property (strong, nonatomic) IBOutlet UILabel *lbOtherBank;
@property (strong, nonatomic) IBOutlet UILabel *lbBeneficary;
@property (strong, nonatomic) IBOutlet UILabel *lbOfficialName;
@property (strong, nonatomic) IBOutlet UILabel *lbPayRef;
@property (strong, nonatomic) IBOutlet UILabel *lbAvgPay;
@property (strong, nonatomic) IBOutlet UILabel *lbSource;
@property (strong, nonatomic) IBOutlet UIImageView *imgTypeAcc;
@property (strong, nonatomic) IBOutlet UILabel *lbCurrentAcc;
@property (strong, nonatomic) IBOutlet UILabel *lbEstimated;
@property (strong, nonatomic) IBOutlet UILabel *lbAmountBalance;
@property (strong, nonatomic) IBOutlet UILabel *lbCategory;
@property (strong, nonatomic) IBOutlet UIImageView *imgFolder;
@property (strong, nonatomic) IBOutlet UILabel *lbPickOne;

@end

NS_ASSUME_NONNULL_END
