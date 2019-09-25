//
//  CardDetailView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/18/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CardDetailView.h"
#import "CardCell.h"
#import "InfoCell.h"

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
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 60, frame.size.width, frame.size.height)];
}

- (void) addContraint {
    NSLayoutConstraint *centreHorizontallyConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.viewInfoCard
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                        toItem:self.scrollView
                                                        attribute:NSLayoutAttributeCenterX
                                                        multiplier:1.0
                                                        constant:0];
    
    NSLayoutConstraint *centreVerticalConstraint = [NSLayoutConstraint
                                                    constraintWithItem:self.viewInfoCard
                                                    attribute:NSLayoutAttributeCenterY
                                                    relatedBy:NSLayoutRelationEqual
                                                    toItem:self.scrollView
                                                    attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                    constant:0];
    [self.scrollView addConstraint:centreHorizontallyConstraint];
    [self.scrollView addConstraint:centreVerticalConstraint];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else return self.arrayName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        NSString * cellName = @"InfoCell";
        //cách 2:
        UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
        return cell;
    }
    else{
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
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 200;
    }
    else return 60;
}

- (IBAction)btnShow:(id)sender {
    self.btnSlide.hidden = YES;
    self.scrollView.contentSize = CGSizeMake(frame.size.width, 1000);
    self.viewInfoCard.frame = CGRectMake(0, 0, self.view.frame.size.width , frame.size.height);
    [self.scrollView addSubview:self.viewInfoCard];
    [self.view addSubview:self.scrollView];
    self.scrollView.backgroundColor = [UIColor lightGrayColor];
    self.table.hidden = YES;
}


- (IBAction)editStatus:(id)sender {
    NSLog(@"editStatus");
}
- (IBAction)searchRelated:(id)sender {
    NSLog(@"searchRelated");
}
- (IBAction)searchBlocked:(id)sender {
    NSLog(@"searchBlocked");
}



@end
