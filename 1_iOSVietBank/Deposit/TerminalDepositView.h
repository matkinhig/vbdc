//
//  TerminalDepositView.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TerminalDepositView : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbNameTerm;
@property (strong, nonatomic) NSString * tmpNameTerm;
@end

NS_ASSUME_NONNULL_END
