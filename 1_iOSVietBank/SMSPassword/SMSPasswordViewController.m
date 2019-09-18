//
//  SMSPasswordViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/7/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "SMSPasswordViewController.h"
#import "UnlockMethodViewController.h"

@interface SMSPasswordViewController ()
@property (strong, nonatomic) IBOutlet UITextField *txtPass;
@property (weak,nonatomic) UnlockMethodViewController * unlockMethodVC;
@property (strong, nonatomic) IBOutlet UIView *viewInfo;
@property (assign,nonatomic) BOOL * isChange;
@end

@implementation SMSPasswordViewController

- (void)viewDidLoad {
[super viewDidLoad];
// Do any additional setup after loading the view.
[self setIsChange:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (IBAction)nextPage:(id)sender {
    if ([_txtPass.text isEqualToString:@"112233"]) {
        _unlockMethodVC = [self.storyboard instantiateViewControllerWithIdentifier:@"unlockViewController"];
        [self presentViewController:_unlockMethodVC animated:YES completion:nil];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Mật khẩu OTP chưa chính xác, kiểm tra lại, bạn còn 3 lần nhập" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        //        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
- (IBAction)isOnOff:(id)sender {
    if (self.isChange) {
        [self setIsChange:NO];
        [UIView animateWithDuration:0.2 animations:^{
            
            self.viewInfo.frame = CGRectMake(0, self.view.frame.size.height - 100, self.view.frame.size.width, 50);
        }];
    }
    else {
        [self setIsChange:YES];
        [UIView animateWithDuration:0.2 animations:^{
            
            self.viewInfo.frame = CGRectMake(0, self.view.frame.size.height - 150, self.view.frame.size.width, 110);
        }];
        
    }
}

@end
