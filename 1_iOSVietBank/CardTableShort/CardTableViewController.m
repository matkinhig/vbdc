//
//  CardTableViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/6/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CardTableViewController.h"

@interface CardTableViewController () <UITableViewDataSource , UITableViewDelegate>
{
    NSArray * arrCard;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CardTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
//    fromLabel.textAlignment = NSTextAlignmentLeft;
//    fromLabel.text = @"Card";
//    fromLabel.numberOfLines = 1;
    arrCard = @[@"DEBIT NFC on Acc 1",@"FORECAST FAILS"];
    
//    self.title= @"Card";
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    self.tableView.scrollEnabled = NO;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath] ;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrCard[indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:@"mastercard-default"];
    return cell;
}

@end
