//
//  ShowTransactionScreen.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/13/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol NewViewDelegate;
@interface ShowTransactionScreen : UIViewController
@property (nonatomic, weak) id <NewViewDelegate> delegate;
@end
@protocol NewViewDelegate <NSObject>

- (void)didPressedButtonInController:(ShowTransactionScreen *)controller;

@end

NS_ASSUME_NONNULL_END
