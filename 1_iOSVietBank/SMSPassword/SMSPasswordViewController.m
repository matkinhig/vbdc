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
@end

@implementation SMSPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

@end
