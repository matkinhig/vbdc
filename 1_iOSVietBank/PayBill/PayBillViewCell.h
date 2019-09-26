//
//  PayBillViewCell.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/26/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PayBillViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lbNameService;
@property (weak, nonatomic) IBOutlet UILabel *typeService;
@property (weak, nonatomic) IBOutlet UILabel *addressService;

@end

NS_ASSUME_NONNULL_END
