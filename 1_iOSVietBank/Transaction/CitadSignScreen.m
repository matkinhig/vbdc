//
//  CitadSignScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/13/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CitadSignScreen.h"
#import "../Dashboard/DashBoardViewController.h"
#import "../AccountTableList/DetailAccount/UIViewController+LCModal.h"

@interface CitadSignScreen ()
@property (strong,nonatomic) DashBoardViewController * DBView;
@end

@implementation CitadSignScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)dealloc {
    NSLog(@"deallocating new view controller");
}


- (IBAction)dismiss:(id)sender {
    [self.delegate didPressedButtonInController:self];
}
- (IBAction)checkStatus:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Giao dịch thành công" message:@"Bạn có muốn trở về màn hình chính"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //button click event
        self->_DBView = [self.storyboard instantiateViewControllerWithIdentifier:@"DBoardView"];
        [self presentViewController:self->_DBView animated:YES completion:nil];
        
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:ok];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
