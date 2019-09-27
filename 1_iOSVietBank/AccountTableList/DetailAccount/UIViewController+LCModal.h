//
//  UIViewController.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/26/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//



#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewController (LCModal)

- (void)lc_presentViewController:(UIViewController *)viewControllerToPresent completion:(void (^)(void))completion;
- (void)lc_dismissViewControllerWithCompletion:(void (^)(void))completion;

@end
