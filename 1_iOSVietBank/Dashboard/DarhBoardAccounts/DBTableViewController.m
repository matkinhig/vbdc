//
//  DBTableViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/24/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "DBTableViewController.h"
#import "../DashBoardViewController.h"

@interface DBTableViewController () <UITableViewDataSource, UITableViewDelegate , UIPickerViewDelegate , UIPickerViewDataSource>
{
    NSArray * arrPayType;
    NSArray * arrAccount;
}
@property (strong, nonatomic) NSIndexPath *firstIndexPath;
@property (strong, nonatomic) NSIndexPath *sencondIndexPath;
@property (strong, nonatomic) IBOutlet UITextField *txtTargetAccount;
@property (strong, nonatomic) IBOutlet UITableViewCell *firstCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *secondCell;
@property (strong, nonatomic) IBOutlet UIPickerView *firstPicker;
@property (strong, nonatomic) IBOutlet UIPickerView *secondPicker;
@property (strong, nonatomic) IBOutlet UIButton *btnPayment;
@property (strong, nonatomic) IBOutlet UIButton *btnAccount;


@property (assign) BOOL * hideTableSection;
@end

@implementation DBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.firstTableOption.delegate = self;
//    self.secondTableOption.delegate = self;
//    
//    self.firstTableOption.dataSource = self;
//    self.secondTableOption.dataSource = self;
    
    arrAccount = @[@"My Current Account", @"My Future Account", @"My past Account"];
    arrPayType = @[@"CK CITAD", @"CK TRONG", @"CK NGOAI"];
    
    self.hideTableSection = YES;
    self.firstCell.selectionStyle = UITableViewCellSelectionStyleNone;
    self.secondCell.selectionStyle = UITableViewCellSelectionStyleNone;
    self.firstPicker.hidden = YES;
    self.secondPicker.hidden = YES;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (pickerView == self.firstPicker) {
        return 3;
    }
    else return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (pickerView == self.firstPicker) {
        return arrPayType[row];
    } else {
        return arrAccount[row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (pickerView == self.firstPicker) {
        [self.btnPayment setTitle:arrPayType[row] forState:UIControlStateNormal];
        self.firstPicker.hidden = YES;
        self.secondPicker.hidden = YES;
    } else {
        [self.btnAccount setTitle:arrAccount[row] forState:UIControlStateNormal];
        self.firstPicker.hidden = YES;
        self.secondPicker.hidden = YES;
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView beginUpdates];
    
    if (indexPath.section == 0) {
        if ([indexPath compare:self.firstIndexPath] == NSOrderedSame) {
            self.hideTableSection = NO;
            self.firstIndexPath = nil;
            [self.tableView reloadData];
        }
        else {
            self.hideTableSection = YES;
            self.firstIndexPath = indexPath;
            [self.tableView reloadData];
        }
    }
    else {
        if ([indexPath compare:self.sencondIndexPath] == NSOrderedSame) {
            self.sencondIndexPath = nil;
        } else {
            self.sencondIndexPath = indexPath;
        }
    }
    
    [tableView endUpdates];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if ([indexPath compare:self.firstIndexPath] == NSOrderedSame) {
            return 650;
        }
        return 125;
    }
    else if(indexPath.section == 1) {
        if ([indexPath compare:self.sencondIndexPath] == NSOrderedSame) {
            return 250;
        }
        else return 110;
    }
    return 60;
}



- (IBAction)selectPayment:(id)sender {
    self.firstPicker.hidden = NO;
}
- (IBAction)selectAccount:(id)sender {
    self.secondPicker.hidden = NO;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    self.firstPicker.hidden = YES;
    self.secondPicker.hidden = YES;
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
