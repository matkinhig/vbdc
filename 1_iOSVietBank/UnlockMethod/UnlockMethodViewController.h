//
//  UnlockMethodViewController.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../PinUnlock/PinViewController.h"
#import "../PatternUnlock/PatternViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface UnlockMethodViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *lbDetail;
@property (weak, nonatomic) IBOutlet UILabel *lbDes;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIButton *btnSelect;

@end

NS_ASSUME_NONNULL_END
