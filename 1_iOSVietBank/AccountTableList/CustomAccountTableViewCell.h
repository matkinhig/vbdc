//
//  CustomAccountTableViewCell.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/10/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomAccountTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *accountName;
@property (nonatomic, weak) IBOutlet UILabel *accountAmount;
@property (nonatomic, weak) IBOutlet UILabel *accountNumber;
@end

NS_ASSUME_NONNULL_END
