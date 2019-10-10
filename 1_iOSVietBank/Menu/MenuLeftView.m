//
//  MenuLeftView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/7/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "MenuLeftView.h"
#import "MenuListCell.h"
#import "../AccountTableList/DataAccountViewController.h"
#import "../PayBill/PayBillView.h"
#import "../Offer/OfferView.h"
#import "../Profile/EditProfileView.h"
#import "../Transaction/TransactionView.h"
#import "../Profile/ProfileView.h"

@interface MenuLeftView () <UITableViewDataSource, UITableViewDelegate>
{
    NSArray * arrMenu;
}

@end

@implementation MenuLeftView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrMenu = @[@"Account",@"Bill Payment",@"Transaction",@"Offer"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrMenu.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MenuListCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MenuListCell"];
    cell.lbMenu.text = arrMenu[indexPath.row];
    cell.imgMenu.image = [UIImage imageNamed:arrMenu[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    switch (indexPath.row) {
        case 0:
        {
            DataAccountViewController * accView = [self.storyboard instantiateViewControllerWithIdentifier:@"DataAccountViewController"];
            [self presentViewController:accView animated:true completion:nil];
            break;
        }
        case 1:
        {
            PayBillView * payView = [self.storyboard instantiateViewControllerWithIdentifier:@"PayBillView"];
            [self presentViewController:payView animated:true completion:nil];
            break;
        }
        case 2:
        {
            NSString * storyboardName = @"Secondary";
            UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
            
            
            TransactionView * tranView = [storyboard instantiateViewControllerWithIdentifier:@"TransactionView"];
            [self presentViewController:tranView animated:YES completion:nil];
            break;
        }
        case 3:
        {
            OfferView * offView = [self.storyboard instantiateViewControllerWithIdentifier:@"OfferView"];
            [self presentViewController:offView animated:true completion:nil];
        }
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:true completion:nil];
}
- (IBAction)changeAvatar:(id)sender {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Change Avatar"
                               message:@"Are you want to change the Avatar?"
                               preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next" style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
        NSLog(@"alert");
        [self changeView];
    }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
        NSLog(@"alert");
       
    }];

    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void) changeView {
    NSString * storyboardName = @"Secondary";
    NSString * viewName = @"ProfileView";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    ProfileView * profileView = [storyboard instantiateViewControllerWithIdentifier:viewName];
    [self presentViewController:profileView animated:true completion:nil];
}



@end
