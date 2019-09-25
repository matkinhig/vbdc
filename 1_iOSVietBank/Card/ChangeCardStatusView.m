//
//  ChangeCardStatusView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/19/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ChangeCardStatusView.h"

@interface ChangeCardStatusView () <UITableViewDelegate,UITableViewDataSource>
{
    NSString *ImageViewC;
    NSArray *data;
    NSArray *data1;
    BOOL * isChange;
    BOOL * isChange1;
}
@property (strong, nonatomic) IBOutlet UIView *viewStyle;
@property (strong, nonatomic) IBOutlet UIView *viewCheck;
@property (weak, nonatomic) IBOutlet UITableView *tableStatus;
@property (weak, nonatomic) IBOutlet UITableView *tableReason;
@property (strong, nonatomic) IBOutlet UIButton *btnStatus;
@property (strong, nonatomic) IBOutlet UIButton *btnReason;


@end
@implementation ChangeCardStatusView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    data=[[NSArray alloc]initWithObjects:@"Temporary Blocked",@"Block Forever",@"Unlock",nil];
    data1=[[NSArray alloc]initWithObjects:@"Stolen Card",@"Do not remember",@"Other Reason", nil];
    
    self.tableStatus.dataSource = self;
    self.tableReason.dataSource = self;
    
    self.tableStatus.delegate = self;
    self.tableReason.delegate = self;
    
    self.tableStatus.hidden = YES;
    self.tableReason.hidden = YES;
    
    // Do any additional setup after loading the view.
    
    //    UIEdgeInsets shadowInsets     = UIEdgeInsetsMake(0, 0, -1.5f, -20);
    //    UIBezierPath *shadowPath      = [UIBezierPath bezierPathWithRect:UIEdgeInsetsInsetRect(self.viewStyle.bounds, shadowInsets)];
    // self.viewStyle.layer.shadowPath    = shadowPath.CGPath;
    //    self.viewCheck.layer.shadowPath    = shadowPath.CGPath;
    self.tableReason.scrollEnabled = NO;
    self.tableStatus.scrollEnabled = NO;
    
    self.viewCheck.layer.shadowRadius  = 3;
    self.viewCheck.layer.cornerRadius = 3;
    self.viewCheck.layer.shadowColor   = [UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.viewCheck.layer.shadowOffset  = CGSizeMake(5, 5);
    self.viewCheck.layer.shadowOpacity = 0.9f;
    self.viewCheck.layer.masksToBounds = NO;
    
    
    self.viewStyle.layer.shadowRadius  = 3;
    self.viewStyle.layer.cornerRadius = 3;
    self.viewStyle.layer.shadowColor   = [UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.viewStyle.layer.shadowOffset  = CGSizeMake(3, 3);
    self.viewStyle.layer.shadowOpacity = 0.9f;
    self.viewStyle.layer.masksToBounds = NO;
    
    
    isChange = TRUE;
    isChange1 = TRUE;
}

- (IBAction)btnStatus:(id)sender {
    ImageViewC = @"1";
    NSLog(@"%i" , isChange);
    if(isChange == TRUE) {
        self.tableStatus.hidden = NO;
        isChange = FALSE;
    }
    else{
        self.tableStatus.hidden = YES;
        isChange = TRUE;
    }
    
    self.tableReason.hidden = YES;
    [self.tableStatus reloadData];
}

- (IBAction)btnReason:(id)sender {
    ImageViewC = @"2";
    if (isChange1 == TRUE) {
        self.tableReason.hidden = NO;
        isChange1 = FALSE;
    } else {
        self.tableReason.hidden = YES;
        isChange1 = TRUE;
    }
    self.tableStatus.hidden = YES;
    [self.tableReason reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * nameCell = @"cellId";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:nameCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nameCell];
    }
    if ([ImageViewC isEqualToString:@"1"]) {
        cell.textLabel.text = [data objectAtIndex:indexPath.row];
    }
    else {
        cell.textLabel.text = [data1 objectAtIndex:indexPath.row];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell=[tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@",selectedCell.textLabel.text);
    if ([ImageViewC isEqualToString:@"1"]) {
        [self.btnStatus setTitle:[NSString stringWithFormat:@"%@",selectedCell.textLabel.text] forState:UIControlStateNormal];
        self.tableStatus.hidden=YES;
        isChange = TRUE;
    }
    else {
        [self.btnReason setTitle:[NSString stringWithFormat:@"%@",selectedCell.textLabel.text] forState:UIControlStateNormal];
        self.tableReason.hidden = YES;
        isChange1 = TRUE;
    }
    
    self.tableStatus.hidden=YES;
    self.tableReason.hidden=YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    self.tableStatus.hidden = YES;
    self.tableStatus.hidden = YES;
    isChange = TRUE;
    isChange1 = TRUE;
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
