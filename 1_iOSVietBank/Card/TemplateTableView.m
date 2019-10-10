//
//  TemplateTableView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/23/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "TemplateTableView.h"
#import "CardListView.h"

@interface TemplateTableView ()
@property (strong, nonatomic) IBOutlet UITableViewCell *cell1;
@property (strong, nonatomic) IBOutlet UIView *contentViewTable;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *viewInfo;
@property (strong, nonatomic) NSIndexPath *expandedIndexPath;
@property (assign) BOOL * hideTableSection;
@end

@implementation TemplateTableView
- (IBAction)dismissView:(id)sender {
    
    CardListView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"CardListView"];
    [self presentViewController:newView animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cell1.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView beginUpdates];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        if ([indexPath compare:self.expandedIndexPath] == NSOrderedSame) {
            self.hideTableSection = NO;
            self.expandedIndexPath = nil;
            [self.tableView reloadData];
//            self.section2.accessibilityElementsHidden = YES;
        } else {
            self.hideTableSection = YES;
            self.expandedIndexPath = indexPath;
            [self.tableView reloadData];
//            self.section2.accessibilityElementsHidden = NO;
        }
    }
    [tableView endUpdates]; // tell the table you're done making
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 0) {
        if ([indexPath compare:self.expandedIndexPath] == NSOrderedSame) {
            return 925.0; // Expanded height
        }
        return 120.0; // Normal height
    }
    if(indexPath.section == 1 && self.hideTableSection) return 0.01f;
    return 80;
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
