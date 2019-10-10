//
//  BasicDetailsView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/2/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "BasicDetailsView.h"

@interface BasicDetailsView ()
@property (weak, nonatomic) IBOutlet UIButton *btnFemale;

@end

@implementation BasicDetailsView

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
    self.lb2.layer.borderColor = UIColor.systemGrayColor.CGColor;
    self.lb2.layer.borderWidth = 1;
    
    self.lb3.layer.cornerRadius = 20;
    self.lb3.layer.borderColor = UIColor.systemGrayColor.CGColor;
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
    
    self.btnFemale.layer.cornerRadius = self.btnFemale.layer.frame.size.height/10;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
}

@end
