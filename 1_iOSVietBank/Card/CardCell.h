//
//  CardCell.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/18/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CardCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageCell;
@property (strong, nonatomic) IBOutlet UILabel *lbName;
@property (strong, nonatomic) IBOutlet UILabel *lbDate;
@property (strong, nonatomic) IBOutlet UILabel *lbAmount;

@end

NS_ASSUME_NONNULL_END
