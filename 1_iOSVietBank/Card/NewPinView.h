//
//  NewPinView.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/19/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewPinView : UIViewController
{
    bool operatorPressed;
    char op;
    NSString * firstEntry;
    NSString * secondEntry;
}
- (IBAction)numberPress:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
