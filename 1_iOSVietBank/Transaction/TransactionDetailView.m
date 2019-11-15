//
//  TransactionDetailView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/8/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "TransactionDetailView.h"

@interface TransactionDetailView ()
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view1;

@end

@implementation TransactionDetailView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view2.hidden = true;
    
}
- (IBAction)showMore:(id)sender {
    self.view2.hidden = false;
}

- (IBAction)showLess:(id)sender {
    self.view2.hidden = true;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
}
- (IBAction)dismissView:(id)sender {
    
    [self dismissViewControllerAnimated:true completion:nil];
}
- (IBAction)repeatPayment:(id)sender {
    
}



@end
