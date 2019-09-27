//
//  PayBillStatusView.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/27/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PayBillStatusView;

@interface PayBillStatusView : UIViewController
@property (nonatomic, weak) id <PayBillStatusView> delegate;
@end

@protocol PayBillStatusView <NSObject>

- (void)didPressedButtonInController:(PayBillStatusView *)controller;

NS_ASSUME_NONNULL_END
