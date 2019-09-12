//
//  CitadInputScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CitadInputScreen.h"
#import "../Dashboard/DashBoardViewController.h"

@interface CitadInputScreen ()
@property (strong,nonatomic) DashBoardViewController * DBView;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
