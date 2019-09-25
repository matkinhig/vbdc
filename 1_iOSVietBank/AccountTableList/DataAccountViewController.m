//
//  DataAccountViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "DataAccountViewController.h"
#import "AccountType.h"
#import "AccountList.h"
#import "AccountData.h"
#import "CustomAccountTableViewCell.h"
#import "AccountDetail.h"
#import "DetailAccount/ShowDetailScreen.h"
#import "../Dashboard/DashBoardViewController.h"
#import "../Dashboard/DarhBoardAccounts/DBAccountViewController.h"
#import "DetailAccount/DetailView.h"


@interface DataAccountViewController ()
{
    NSMutableArray * arrayAccountType;
    NSMutableArray * arrayAccountDetail;
  
}
@property (strong,nonatomic) DBAccountViewController * dbView;
@end

@implementation DataAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayAccountType = [[AccountData shareData] arrAccount];

    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Edit"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(onEdit)];
    NSLog(@"%lu", arrayAccountType.count);
}

- (void) onAdd {
    
}

- (void) onDelete {
    NSArray *selectedRows;
    selectedRows = self.tableView.indexPathsForSelectedRows;
    if (selectedRows.count > 0) {
        NSMutableIndexSet *indicesOfItemsToDelete = [[NSMutableIndexSet alloc] init];
        for (NSIndexPath *selectedIndex in selectedRows) {
            [indicesOfItemsToDelete addIndex: selectedIndex.row];
        }
        [arrayAccountType removeObjectsAtIndexes:indicesOfItemsToDelete];
        [self.tableView deleteRowsAtIndexPaths:selectedRows withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (void) onBack {
    _dbView = [self.storyboard instantiateViewControllerWithIdentifier:@"DBAccountView"];
//    _pinView = [self.storyboard instantiateViewControllerWithIdentifier:@"PinUnlock"];
    [self presentViewController:_dbView animated:YES completion:nil];
}

- (void)onEdit {
    if (self.tableView.editing) {
        [self.tableView setEditing:false animated:YES];
        self.navigationItem.leftBarButtonItem =
        [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                      target:self
                                                      action:@selector(onBack)];
        self.navigationItem.rightBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle:@"Edit"
                                         style:UIBarButtonItemStylePlain
                                        target:self
                                        action:@selector(onEdit)];
    } else {
        
        [self.tableView setEditing:true animated:YES];
        self.navigationItem.rightBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle:@"Delete"
                                         style:UIBarButtonItemStylePlain
                                        target:self
                                        action:@selector(onDelete)];
        self.navigationItem.leftBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                         style:UIBarButtonItemStylePlain
                                        target:self
                                        action:@selector(onEdit)];
    }
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    AccountType * accountType = arrayAccountType[section];
    return accountType.arrayAccount.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    AccountType * accountType = arrayAccountType[indexPath.section];
    AccountList * account = accountType.arrayAccount[indexPath.row];
    
    CustomAccountTableViewCell *cell = (CustomAccountTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomAccountTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.accountName.text = account.accountName;
    cell.accountAmount.text = account.accountAmount;
    cell.accountNumber.text = account.accountNumber;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    AccountType *continent = arrayAccountType[indexPath.section];
//    AccountList *acclist = continent.arrayAccount[indexPath.row];
//
//    AccountDetail * acc = [[AccountDetail alloc] init];
//    acc = continent.arrayAccount[indexPath.row];
//
//    ShowDetailScreen * showDetail = [[ShowDetailScreen alloc]init];
//    showDetail.stringAccountName = acclist.accountName;
//    showDetail.stringAccountNumber = acclist.accountNumber;
//    showDetail.stringAmount = acclist.accountAmount;
    
//    TemplateTableView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TemplateTableView"];
//    [self presentViewController:newView animated:YES completion:nil];
    
    DetailView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailView1"];
    [newView presentViewController:newView animated:YES completion:nil];
    
//    NSLog(@"%@ - %@", acclist.accountName, acclist.accountNumber);
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
     AccountType * accountType = arrayAccountType[indexPath.section];
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [accountType.arrayAccount removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

- (void) tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    AccountDetail * accDetail = [AccountDetail new];
    AccountType * accType = arrayAccountType[sourceIndexPath.section];
    accDetail = accType.arrayAccount[sourceIndexPath.row];
    [arrayAccountType removeObjectAtIndex:sourceIndexPath.row];
    [arrayAccountType insertObject:accDetail atIndex:destinationIndexPath.row];
}

@end
