//
//  EditPictureView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "EditPictureView.h"

@interface EditPictureView ()

@property (weak, nonatomic) IBOutlet UITextField *txtCountry;
@property (weak, nonatomic) IBOutlet UITextField *txtState;
@property (weak, nonatomic) IBOutlet UITextField *txtPortalCode;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;

@end

@implementation EditPictureView

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * arrayAddress = [self.tmpAddress componentsSeparatedByString:@","];
    // Do any additional setup after loading the view.
    self.txtCountry.placeholder = [arrayAddress objectAtIndex:0];
    self.txtState.placeholder = [arrayAddress objectAtIndex:1];
    self.txtPortalCode.placeholder = [arrayAddress objectAtIndex:2];
    self.txtCity.placeholder = [arrayAddress objectAtIndex:3];
    self.txtAddress.placeholder = [arrayAddress objectAtIndex:4];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
    NSLog(@"%@", self.tmpAddress);
    self.enteredText = [NSString stringWithFormat:@"%@, %@, %@, %@, %@", self.txtCountry.text , self.txtState.text, self.txtPortalCode.text,self.txtCity.text,  self.txtAddress.text ];
    NSLog(@"%@", self.enteredText);
}

- (IBAction)dismissview:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}



@end
