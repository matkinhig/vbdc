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
        _lbOutPut.text = firstEntry;
        NSLog(@"%@", _lbOutPut.text);
    }
    else {
        firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,(int)sender.tag];
        _lbOutPut.text = firstEntry;
        
        NSLog(@"%@", _lbOutPut.text);
    }
}
- (IBAction)deleteText:(id)sender {
    firstEntry = NULL;
    _lbOutPut.text = NULL;
}
- (IBAction)confirmText:(id)sender {
    if(self.lbOutPut == nil || [self.lbOutPut.text isEqualToString:@""]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Không được bỏ trống PASSCODE" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        //        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    if([_lbOutPut.text isEqualToString:@"0000"]) {
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
