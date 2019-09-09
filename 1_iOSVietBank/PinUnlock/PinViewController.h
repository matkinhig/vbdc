//
//  PinViewController.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PinViewController : UIViewController
{
    bool operatorPressed;
    char op;
    NSString * firstEntry;
    NSString * secondEntry;
}
@property (strong, nonatomic) IBOutlet UITextField *lbOutPut;
@property (nonatomic, assign) BOOL isSomethingEnabled;

- (IBAction)numberPress:(UIButton *)sender;
@end

NS_ASSUME_NONNULL_END
