//
//  TransactionView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/8/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "TransactionView.h"
#import "TransactionCell.h"
#import "TransactionDetailView.h"

@interface TransactionView () <UITableViewDelegate, UITableViewDataSource>
{
    NSArray * arrayTrans;
}
@end

@implementation TransactionView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrayTrans = @[
        @"Adam",
        @"Partner 1",
        @"Adam Korvac",
        @"Tom & Jerry",
        @"Jack SPT",
        @"Sonic Way",
        @"Thumbnail",
        @"James Roudigues",
        @"Red Pool exerciting"
    ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayTrans.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * nameCell = @"TransactionCell";
    TransactionCell * tranCell = [tableView dequeueReusableCellWithIdentifier:nameCell];
    tranCell.lbName.text = arrayTrans[indexPath.row];
    
    
    
    switch (indexPath.row) {
        case 0:
            tranCell.lbAmount.text = @"999.999 VND";
            tranCell.lbDate.text = @"To day";
            tranCell.imgAvatar.image = [UIImage imageNamed:@"avatar"];
            break;
        case 1:
            tranCell.lbAmount.text = @"919.999 VND";
            tranCell.lbDate.text = @"To day";
            tranCell.imgAvatar.image = [UIImage imageNamed:@"avatar1"];
            break;
        case 2:
            tranCell.lbAmount.text = @"9.999 VND";
            tranCell.lbDate.text = @"To day";
            tranCell.imgAvatar.image = [UIImage imageNamed:@"avatar2"];
            break;
            
        default:
            tranCell.lbAmount.text = @"9.999 VND";
            tranCell.lbDate.text = @"Last Friday";
            tranCell.imgAvatar.image = [UIImage imageNamed:@"avatar"];
            break;
    }
    
    return tranCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TransactionDetailView * detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"TransactionDetailView"];
    [self presentViewController:detailView animated:YES completion:nil];
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
