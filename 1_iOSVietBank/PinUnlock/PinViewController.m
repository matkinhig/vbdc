//
//  PinViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "PinViewController.h"

@interface PinViewController ()
@property (weak,nonatomic) UIViewController * loginView;
@property (strong, nonatomic) NSString *myPickerValue;
@end

@implementation PinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"daqua");
    operatorPressed = false;
    firstEntry = NULL;
    secondEntry = NULL;
    _lbOutPut.enabled = NO;
}
- (IBAction)numberPress:(UIButton *)sender {
//    int tag = sender.tag;
    if (firstEntry == NULL) {
        firstEntry = [NSString stringWithFormat:@"%i",(int)sender.tag];
        self.myPickerValue = firstEntry;
        self.lbOutPut.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", _lbOutPut.text);
    }
    else {
        firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,(int)sender.tag];
        _lbOutPut.text = firstEntry;
        self.myPickerValue = firstEntry;
        self.lbOutPut.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", _lbOutPut.text);
    }
}
- (IBAction)deleteText:(id)sender {
    firstEntry = NULL;
    _lbOutPut.text = NULL;
}
- (IBAction)confirmText:(id)sender {
    if(self.myPickerValue == nil || [self.myPickerValue isEqualToString:@""]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Không được bỏ trống PASSCODE" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        //        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    if([self.myPickerValue isEqualToString:@"0000"]) {
        _loginView = [self.storyboard instantiateViewControllerWithIdentifier:@"loginViewControllerID"];
        [self presentViewController:_loginView animated:YES completion:nil];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Sai PASSCODE đăng nhập" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        //        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end
