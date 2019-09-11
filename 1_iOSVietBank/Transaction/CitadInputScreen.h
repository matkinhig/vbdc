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
@property (strong, nonatomic) IBOutlet UIButton *btnPaymentType;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;
@end

NS_ASSUME_NONNULL_END
