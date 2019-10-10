//
//  ChangeCapView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/30/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ChangeCapView.h"

@interface ChangeCapView () <UITableViewDelegate, UITableViewDataSource>
{
    BOOL checkBoxSelected;
}
@property (weak, nonatomic) IBOutlet UIButton *btnCheckBox;
@property (weak, nonatomic) IBOutlet UITableView *myTable;

@end

@implementation ChangeCapView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btnCheckBox setBackgroundImage:[UIImage imageNamed:@"uncheckbox"]
                        forState:UIControlStateNormal];
    [self.btnCheckBox setBackgroundImage:[UIImage imageNamed:@"checkbox"]
                        forState:UIControlStateSelected];
    [self.btnCheckBox setBackgroundImage:[UIImage imageNamed:@"checkbox"]
                        forState:UIControlStateHighlighted];
    self.btnCheckBox.adjustsImageWhenHighlighted=YES;
    
}
- (IBAction)checkboxSelected:(id)sender {
    checkBoxSelected = !checkBoxSelected; /* Toggle */
    [self.btnCheckBox setSelected:checkBoxSelected];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellName = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.imageView.image = [UIImage imageNamed:@"avatar"];
    cell.textLabel.text = @"Roger Moore";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}



@end
