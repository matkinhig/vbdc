//
//  ItemView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/2/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ItemView.h"

@interface ItemView ()

@end

@implementation ItemView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutForLabel];
}
- (void) layoutForLabel {
    self.lb1.layer.cornerRadius = 20;
    self.lb1.layer.borderColor = UIColor.systemBlueColor.CGColor;
    self.lb1.layer.borderWidth = 1;
    
    self.lb2.layer.cornerRadius = 20;
    self.lb2.layer.borderColor = UIColor.systemBlueColor.CGColor;
    self.lb2.layer.borderWidth = 1;
    
    self.lb3.layer.cornerRadius = 20;
    self.lb3.layer.borderColor = UIColor.systemBlueColor.CGColor;
    self.lb3.layer.borderWidth = 1;
    
    self.lb4.layer.cornerRadius = 20;
    self.lb4.layer.borderColor = UIColor.systemGrayColor.CGColor;
    self.lb4.layer.borderWidth = 1;
    
    self.lb5.layer.cornerRadius = 20;
    self.lb5.layer.borderColor = UIColor.systemGrayColor.CGColor;
    self.lb5.layer.borderWidth = 1;
    
    self.lb6.layer.cornerRadius = 20;
    self.lb6.layer.borderColor = UIColor.systemGrayColor.CGColor;
    self.lb6.layer.borderWidth = 1;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
