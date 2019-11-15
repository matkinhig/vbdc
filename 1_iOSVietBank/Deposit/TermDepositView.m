//
//  TermDepositView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "TermDepositView.h"
#import "CreateTermDeposit.h"
#import "TerminalDepositView.h"

@interface TermDepositView () <UITableViewDelegate , UITableViewDataSource>

@end

@implementation TermDepositView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrDeposit = @[@"Term Deposit 1", @"Term Deposit 2", @"Term Deposit 3", @"Term Deposit 4"];
}
- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.arrDeposit[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"deposit"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TerminalDepositView * terminalView = [self.storyboard instantiateViewControllerWithIdentifier:@"TerminalDepositView"];
    terminalView.tmpNameTerm = self.arrDeposit[indexPath.row];
    [self presentViewController:terminalView animated:true completion:nil];
}



- (IBAction)changeView:(id)sender {
    CreateTermDeposit * createView = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateTermDeposit"];
    [self presentViewController:createView animated:true completion:nil];
}





@end
