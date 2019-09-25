//
//  CardListView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/18/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CardListView.h"
#import "TemplateTableView.h"

@interface CardListView ()
@property (strong , nonatomic) NSArray * arrayCardName;
@property (strong , nonatomic) NSArray * arrayCardAmout;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation CardListView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrayCardName = @[@"MY CARD", @"DEBIT NFC on Acc 1" , @"FORECAST" , @"CVC" , @"PIN", @"PROGRESS"];
    self.arrayCardAmout = @[@"2,020.00 $" , @"7,070 Ft" , @"-4,040.00 $" , @"-3,030.00 $" ,@"1,010.00 Ft", @"5,050.00 $"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayCardName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * nameCell = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:nameCell];
    cell.textLabel.text = self.arrayCardName[indexPath.row];
    cell.detailTextLabel.text = self.arrayCardAmout[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"card-missing"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"SELECTED ROW");
    TemplateTableView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TemplateTableView"];
    [self presentViewController:newView animated:YES completion:nil];
    
}

@end
