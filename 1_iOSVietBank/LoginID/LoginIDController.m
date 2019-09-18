//
//  LoginIDController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/4/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "LoginIDController.h"
#import "SMSPasswordViewController.h"

@interface LoginIDController ()
@property (weak, nonatomic) IBOutlet UITextField *txtLoginID;
@property (weak, nonatomic) IBOutlet UIButton *btnNextID;
@property (strong, nonatomic) IBOutlet UIView *viewInfo;
@property (weak, nonatomic)  SMSPasswordViewController * smsOtpViewController;
@property (nonatomic, assign) BOOL * isChange;

@end

@implementation LoginIDController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self setIsChange:YES];
    // Do any additional
    self.btnNextID.enabled = true;
    self.txtLoginID.delegate = self;
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
}
- (void) textFieldDidEndEditing:(UITextField *)textField{
    if (self.txtLoginID == nil || [self.txtLoginID.text isEqualToString:@""]) {
        self.btnNextID.enabled = false;
    }
}
- (IBAction)submitButton:(id)sender {
    if(self.txtLoginID == nil || [self.txtLoginID.text isEqualToString:@""])
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Không được bỏ trống ID" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
//        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else {
        _smsOtpViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sMSOTPView"];
        [self presentViewController:_smsOtpViewController animated:YES completion:nil];
    }
}

- (void) showErrorAlert {
    UIAlertController* alert = [UIAlertController
        alertControllerWithTitle:@"Đăng nhập xảy ra lỗi"
        message:@"Không được bỏ trống ID"
        preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (IBAction)infoAction:(id)sender {
    
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
