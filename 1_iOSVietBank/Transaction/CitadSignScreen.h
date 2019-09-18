//
//  CitadSignScreen.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/13/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CitadSignScreen;

@interface CitadSignScreen : UIViewController
@property (nonatomic, weak) id <CitadSignScreen> delegate;
@end


@protocol CitadSignScreen <NSObject>

- (void)didPressedButtonInController:(CitadSignScreen *)controller;

@end

