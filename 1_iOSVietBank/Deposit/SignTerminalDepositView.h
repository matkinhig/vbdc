//
//  SignTerminalDepositView.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignTerminalDepositView : UIViewController
@property (nonatomic, strong) NSString * tmpNameTerm;
@property (weak, nonatomic) IBOutlet UILabel *lbNameTerm;
@end

NS_ASSUME_NONNULL_END
