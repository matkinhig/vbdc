//
//  DataAccountTableViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "DataAccountTableViewController.h"
#import "DBAccountCustomCellTableViewCell.h"

@interface DataAccountTableViewController ()
{
    NSArray * arrAccount;
}
@end

@implementation DataAccountTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrAccount = @[@"My test account 1", @"My test Account 2", @"My test Account 3", @"My test Account 4", @"My test Account 5", @"My test Account 6", @"My test Account 7", @"My test Account 8"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DBAccountCustomCellTableViewCell *cell = (DBAccountCustomCellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"DBAccountCustomCellTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.backgroundColor = ([indexPath row]%2)?[UIColor lightGrayColor]:[UIColor whiteColor];
    //    cell.accountName.text = [NSString stringWithFormat:@"%@", arrAccount[indexPath.row]];
    //    cell.imageView.image = [UIImage imageNamed:@"default_cards_missing_card_picture-default"];
    
    //    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath] ;
    //
    //
    //    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    //    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrAccount[indexPath.row]];
    
    return cell;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
