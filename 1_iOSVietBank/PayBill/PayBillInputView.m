//
//  PayBillInputView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/26/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "PayBillInputView.h"

@interface PayBillInputView () <UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSArray * arrayAccount;
}

@property (weak, nonatomic) IBOutlet UILabel *lbNameT;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerAccount;
@property (weak, nonatomic) IBOutlet UIButton *btnSelectAccount;
@property (weak, nonatomic) IBOutlet UIView *viewInput;
@property (weak, nonatomic) IBOutlet UIButton *btnBillData;
@property (weak, nonatomic) IBOutlet UIView *viewContainer;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UITextField *txtCustomerID;
@property (weak, nonatomic) IBOutlet UIView *view3;

@end

@implementation PayBillInputView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lbNameT.text = self.nameType;
    arrayAccount = @[@"MY CURRENT ACCOUNT", @"MY FUTURE ACCOUNT", @"MY PAST ACCOUNT"];
    self.pickerAccount.hidden = YES;
    
    self.pickerAccount.layer.cornerRadius = 10;
    self.pickerAccount.layer.shadowRadius = 10;
    self.pickerAccount.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.pickerAccount.layer.shadowOffset = CGSizeMake(5, 5);
    self.pickerAccount.layer.shadowOpacity = 0.9f;
    self.pickerAccount.layer.masksToBounds = NO;
    
    self.view1.layer.cornerRadius = 5;
    self.view1.layer.shadowRadius = 5;
    self.view1.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.view1.layer.shadowOffset = CGSizeMake(5, 5);
    self.view1.layer.shadowOpacity = 0.9f;
    self.view1.layer.masksToBounds = NO;
    
    self.view2.layer.cornerRadius = 5;
    self.view2.layer.shadowRadius = 5;
    self.view2.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.view2.layer.shadowOffset = CGSizeMake(5, 5);
    self.view2.layer.shadowOpacity = 0.9f;
    self.view2.layer.masksToBounds = NO;
    
    self.view3.layer.cornerRadius = 5;
    self.view3.layer.shadowRadius = 5;
    self.view3.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.view3.layer.shadowOffset = CGSizeMake(5, 5);
    self.view3.layer.shadowOpacity = 0.9f;
    self.view3.layer.masksToBounds = NO;
    
    self.txtCustomerID.layer.cornerRadius = 20;
    self.txtCustomerID.layer.shadowRadius = 20;
    self.txtCustomerID.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.txtCustomerID.layer.shadowOffset = CGSizeMake(5, 5);
    self.txtCustomerID.layer.shadowOpacity = 0.9f;
    self.txtCustomerID.layer.masksToBounds = NO;
    
    
    
    self.viewContainer.hidden = YES;
}




- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return arrayAccount[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [self.btnSelectAccount setTitle:arrayAccount[row] forState:UIControlStateNormal];
    self.pickerAccount.hidden = YES;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 50;
}


- (IBAction)selectAccount:(id)sender {
    self.pickerAccount.hidden = NO;
}
- (IBAction)selectBillDatat:(id)sender {
    self.btnBillData.hidden = YES;
    [UIView animateWithDuration:5 animations:^{
        self.viewContainer.hidden = NO;
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
