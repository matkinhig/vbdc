//
//  LoginMethodViewController.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../CenterView/CenterView.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginMethodViewController : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong , nonatomic) NSMutableArray * centerView;

@end

NS_ASSUME_NONNULL_END
