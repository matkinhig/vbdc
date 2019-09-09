//
//  AccountTableViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/6/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "AccountTableViewController.h"

@interface AccountTableViewController () <UITableViewDataSource , UITableViewDelegate>
{
    NSArray * arrAccount;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AccountTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrAccount = @[@"My test account 1", @"My test Account 2", @"My test Account 3"];
    // Do any additional setup after loading the view.
    
//    self.title= @"Account";
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath] ;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrAccount[indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:@"default_cards_missing_card_picture-default"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
    return cell;
}


@end
