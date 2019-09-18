//
//  CitadInputScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CitadInputScreen.h"
#import "../Dashboard/DashBoardViewController.h"
#import "CitadConfirmScreen.h"

@interface CitadInputScreen ()
@property (strong,nonatomic) DashBoardViewController * DBView;
@property (weak,nonatomic) CitadConfirmScreen * confirm;
@end

@implementation CitadInputScreen

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.data = [[NSArray alloc]initWithObjects:@"CITAD", @"CK TRONG", @"CK NHANH", nil];
    self.tableView.hidden = true;
    
    
    [self.btnBTN.layer setBorderWidth:1];
    [self.btnBTN.layer setBorderColor:[[UIColor blackColor] CGColor]];
    self.btnBTN.layer.cornerRadius = 5;
    self.btnBTN.clipsToBounds = YES;
    
    [self.btnPaymentType.layer setBorderWidth:1];
    [self.btnPaymentType.layer setBorderColor:[[UIColor blackColor] CGColor]];
    self.btnPaymentType.layer.cornerRadius = 5;
    self.btnPaymentType.clipsToBounds = YES;
    
    
    [self.btnAccount.layer setBorderWidth:1];
    [self.btnAccount.layer setBorderColor:[[UIColor blackColor] CGColor]];
    self.btnAccount.layer.cornerRadius = 5;
    self.btnAccount.clipsToBounds = YES;
    
    self.btnNumber.layer.cornerRadius = 5;
    self.btnNumber.clipsToBounds = YES;
    
    self.txtCity.layer.cornerRadius =5;
    
    self.lbBankName.layer.cornerRadius = 5;
    
    self.txtBrandName.layer.cornerRadius = 5;
    
    self.txtOfficialName.layer.cornerRadius = 5;
    
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.btnPaymentType setTitle:[self.data objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    self.tableView.hidden = YES;
}
- (IBAction)btnChangeStatus:(id)sender {
    if (self.tableView.hidden == true) {
        self.tableView.hidden = false;
    } else {
        self.tableView.hidden = true;
    }
}
- (IBAction)btnBackScreen:(id)sender {
    _DBView = [self.storyboard instantiateViewControllerWithIdentifier:@"DBoardView"];
    [self presentViewController:_DBView animated:YES completion:nil];
}
- (IBAction)confrimCitad:(id)sender {
    if(self.lbTargetAccount == nil || [self.lbTargetAccount.text isEqualToString:@""] ||
       self.btnNumber == nil || [self.btnNumber.text isEqualToString:@""] ||
       self.txtCity == nil || [self.txtCity.text isEqualToString:@""] ||
       self.lbNumber == nil || [self.lbNumber.text isEqualToString:@""] ||
       self.lbBankName == nil || [self.lbBankName.text isEqualToString:@""] ||
       self.txtBrandName == nil || [self.txtBrandName.text isEqualToString:@""] ||
       self.txtOfficialName == nil || [self.txtOfficialName.text isEqualToString:@""]
       ){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Lỗi" message:@"Không được bỏ trống các trường" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else {
        _confirm = [self.storyboard instantiateViewControllerWithIdentifier:@"confirmScreen"];
        [self presentViewController:_confirm animated:YES completion:nil];
    }

}

@end
