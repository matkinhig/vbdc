//
//  PayBillView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/26/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "PayBillView.h"
#import "PayBillViewCell.h"
#import "PayBillInputView.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

#define RAND_FROM_TO(min, max) (min + arc4random_uniform(max - min + 1))


@interface PayBillView () <UITableViewDelegate, UITableViewDataSource , UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSArray * arrayElectricity;
    NSArray * arrayWater;
    NSArray * arrayLandline;
    NSArray * internet;
    NSArray * tax;
    NSArray * arrayImage;
    NSIndexPath* checkedIndexPath;
    NSString * nameT;
}
@property (nonatomic, retain) NSIndexPath* checkedIndexPath;
@property (nonatomic, retain) NSString * nameT;

@property (weak, nonatomic) IBOutlet UIPickerView *billPicker;
@property (weak, nonatomic) IBOutlet UIView *viewCatelogy;

@property (weak, nonatomic) IBOutlet UITableView *billTable;
@property (strong ,nonatomic) NSArray * arrayType;
@property (strong, nonatomic) IBOutlet UIButton *btnCategory;


@end


@implementation PayBillView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewCatelogy.layer.cornerRadius = 5;
    self.viewCatelogy.layer.shadowRadius = 5;
    self.viewCatelogy.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.viewCatelogy.layer.shadowOffset = CGSizeMake(5, 5);
    self.viewCatelogy.layer.shadowOpacity = 0.9f;
    self.viewCatelogy.layer.masksToBounds = NO;
    
    self.billPicker.layer.cornerRadius = 20;
    self.billPicker.layer.shadowRadius = 5;
    self.billPicker.layer.shadowColor =[UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.billPicker.layer.shadowOffset = CGSizeMake(5, 5);
    self.billPicker.layer.shadowOpacity = 0.9f;
    self.billPicker.layer.masksToBounds = NO;
    
    
    //•    Internet
//    •    Land lines
//    •    Post-Paid Mobile
//    •    Cable
//    •    Airplane ticket from VNTicket
//    •    Airplane /Train Ticket from VietJetAir
//    •    Pre-Paid Mobile
//    •    E-Commerce
    self.arrayType = @[@"Electricity",@"Water",@"Internet",@"Land lines" , @"Post-Paid Mobile" , @"Cable",@"Airplane ticket from VNTicket",@"Airplane /Train Ticket from VietJetAir",@"Pre-Paid Mobile",@"E-Commerce"];
    
    arrayElectricity = @[@"Điện Lực 1", @"Điện Lực 2", @"Điện Lực 3", @"Điện Lực 4",@"Điện Lực 5",@"Điện Lực 6",@"Điện Lực 7",@"Điện Lực 8",@"Điện Lực 9",@"Điện Lực 10"];
    
    arrayWater = @[@"Cấp Nước 1", @"Cấp Nước 2", @"Cấp Nước 3", @"Cấp Nước 4",@"Cấp Nước 5",@"Cấp Nước 6",@"Cấp Nước 7",@"Cấp Nước 8",@"Cấp Nước 9",@"Cấp Nước 10"];
    
    tax = @[@"Điện Lực 1",@"Cấp Nước 1", @"Cấp Nước 2", @"Cấp Nước 3", @"Cấp Nước 4",@"Cấp Nước 5", @"Điện Lực 2", @"Điện Lực 3", @"Điện Lực 4",@"Điện Lực 5",@"Điện Lực 6",@"Điện Lực 7",@"Điện Lực 8",@"Điện Lực 9",@"Điện Lực 10",@"Cấp Nước 6",@"Cấp Nước 7",@"Cấp Nước 8",@"Cấp Nước 9",@"Cấp Nước 10"];
    
    arrayImage = @[@"electricity", @"water", @"internet" , @"tax", @"landline"];
    
    self.billPicker.dataSource = self;
    self.billPicker.delegate = self;
    
    self.billPicker.hidden = YES;
    nameT = @"";
}

//begin setup table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([[self.btnCategory currentTitle] isEqualToString:self.arrayType[0]]) {
        return arrayElectricity.count;
    } else {
        return 10;
    }
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * cellName = @"cellList";
    
    PayBillViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    
    if ([[self.btnCategory currentTitle] isEqualToString:self.arrayType[0]]) {
        cell.imgAvatar.image = [UIImage imageNamed:@"electricity"];
        cell.lbNameService.text = arrayElectricity[indexPath.row];
        cell.typeService.text = @"Electricity";
        cell.addressService.text = @"TP HCM,Viet Nam ";
    }
    else if ([[self.btnCategory currentTitle] isEqualToString:self.arrayType[1]]){
        cell.imgAvatar.image = [UIImage imageNamed:@"water"];
        cell.lbNameService.text = arrayWater[indexPath.row];
        cell.typeService.text = @"Water";
        cell.addressService.text = @"TP HCM,Viet Nam ";
    }
    else {
        cell.imgAvatar.image = [UIImage imageNamed:arrayImage[RAND_FROM_TO(0, 4)]];
        cell.lbNameService.text = tax[RAND_FROM_TO(0, 9)];
        cell.typeService.text = @"Insurance";
        cell.addressService.text = @"TP HCM,Viet Nam ";
    }
    
    if([self.checkedIndexPath isEqual:indexPath])
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.checkedIndexPath)
    {
        PayBillViewCell * uncheckCell = [tableView
                                        cellForRowAtIndexPath:self.checkedIndexPath];
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
        self.nameT = @"";
        
    }
    if([self.checkedIndexPath isEqual:indexPath])
    {
        self.checkedIndexPath = nil;
        self.nameT = @"";
    }
    else
    {
        PayBillViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.checkedIndexPath = indexPath;
        self.nameT = cell.lbNameService.text;
    }
    NSLog(@"%@",self.nameT);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
//end setup table view



//setup picker view

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.arrayType count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.arrayType[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [self.btnCategory setTitle:self.arrayType[row] forState:UIControlStateNormal];
    [self.billTable reloadData];
    self.billPicker.hidden = YES;
}
//end setup



- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)selectCategory:(id)sender {
    self.billPicker.hidden = NO;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (IBAction)nextScreen:(id)sender {
    if (self.checkedIndexPath && [self.nameT length] > 0) {
        PayBillInputView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"PayBillInputView"];
        newView.nameType = self.nameT;
        [self presentViewController:newView animated:YES completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warning" message:@"Vui lòng chọn Đơn vị thanh toán Hoá đơn" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //button click event
        }];
        //        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end
