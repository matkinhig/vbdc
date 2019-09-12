//
//  CitadInputScreen.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CitadInputScreen : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imgIMG;
@property (strong, nonatomic) IBOutlet UITextField *lbTargetAccount;
@property (strong, nonatomic) IBOutlet UIImageView *imgIcon;
@property (strong, nonatomic) IBOutlet UIButton *btnBTN;
@property (strong, nonatomic) IBOutlet UILabel *lbPayType;
@property (strong, nonatomic) IBOutlet UIButton *btnPaymentType;
@property (strong, nonatomic) IBOutlet UILabel *lbFinancial;
@property (strong, nonatomic) IBOutlet UIButton *btnAccount;
@property (strong, nonatomic) IBOutlet UILabel *lbNumber;
@property (strong, nonatomic) IBOutlet UITextField *btnNumber;
@property (strong, nonatomic) IBOutlet UILabel *lblCity;
@property (strong, nonatomic) IBOutlet UITextField *txtCity;
@property (strong, nonatomic) IBOutlet UIButton *search;
@property (strong, nonatomic) IBOutlet UILabel *lbbankname;
@property (strong, nonatomic) IBOutlet UITextField *lbBankName;
@property (strong, nonatomic) IBOutlet UILabel *lbBrandName;
@property (strong, nonatomic) IBOutlet UITextField *txtBrandName;
@property (strong, nonatomic) IBOutlet UILabel *lbOfficialName;
@property (strong, nonatomic) IBOutlet UITextField *txtOfficialName;
@property (strong, nonatomic) IBOutlet UIView *myView;


@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;





@end

NS_ASSUME_NONNULL_END
