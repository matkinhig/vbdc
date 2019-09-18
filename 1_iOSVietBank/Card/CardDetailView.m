//
//  CardDetailView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/18/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CardDetailView.h"
#import "CardCell.h"

@interface CardDetailView () <UITableViewDelegate , UITableViewDataSource>
{
    CGRect frame;
}
@property (strong, nonatomic) IBOutlet UIButton *btnSlide;
@property (strong, nonatomic) NSArray * arrayName;
@property (strong, nonatomic) NSArray * arrayDate;
@property (strong, nonatomic) NSArray * arrayAmount;
@property (strong, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) UIScrollView * scrollView;
@property (strong, nonatomic) IBOutlet UIView *viewInfoCard;
@end

@implementation CardDetailView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrayName = @[@"Auchan H -98", @"Dominic Olvaso", @"Dominic Olvaso" , @"Multi Filter899" , @"Local Clara @UK" , @"Tom & Jerry" , @"Tom & Jerry" , @"Tutto IT PROV Kft", @"Raiffeisen GER Bank"];
    self.arrayDate = @[@"2015-11-02", @"2015-11-01", @"2015-11-01", @"2015-10-31", @"2015-10-31", @"2015-10-31", @"2015-10-30", @"2015-10-30",  @"2015-10-28"];
    self.arrayAmount = @[@"221818" , @"534", @"534", @"5641", @"263", @"166", @"-991", @"-839", @"-629"];
    
    NSLog(@"%li" , self.arrayName.count);
    NSLog(@"%li" , self.arrayDate.count);
//    self.table.hidden = YES;
    frame = self.view.frame;
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 44, frame.size.width, frame.size.height)];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * cellName = @"cell";
    //cách 2:
    CardCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (indexPath.row % 3 == 0) {
        cell.imageCell.image = [UIImage imageNamed:@"avatar"];
    }
    else if (indexPath.row % 3 == 1) {
        cell.imageCell.image = [UIImage imageNamed:@"avatar1"];
    }
    else {
        cell.imageCell.image = [UIImage imageNamed:@"avatar2"];
    }
    cell.lbName.text = self.arrayName[indexPath.row];
    cell.lbDate.text = self.arrayDate[indexPath.row];
    cell.lbAmount.text =  [NSString stringWithFormat:@"%@ %@",self.arrayAmount[indexPath.row], @"$"];
    if([self.arrayAmount[indexPath.row] integerValue] < 0)
    {
        cell.lbAmount.textColor = [UIColor redColor];
    }
    else {
        cell.lbAmount.textColor = [UIColor greenColor];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (IBAction)btnShow:(id)sender {
    self.btnSlide.hidden = YES;
    self.viewInfoCard.frame = CGRectMake(0, 44, frame.size.width , frame.size.height);
    
}


- (IBAction)editStatus:(id)sender {
}
- (IBAction)searchRelated:(id)sender {
}
- (IBAction)searchBlocked:(id)sender {
}
- (IBAction)editLimit:(id)sender {
}
- (IBAction)changePin:(id)sender {
}
- (IBAction)showCardNumber:(id)sender {
}
- (IBAction)showBlockedTransaction:(id)sender {
}
- (IBAction)showRelatedAccount:(id)sender {
}




@end
