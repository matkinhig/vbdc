//
//  DBAccount.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "DBAccount.h"
#import "DBAccountCustomCellTableViewCell.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface DBAccount () <UITableViewDataSource , UITableViewDelegate>
{
    NSArray * arrAccount;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DBAccount

- (void)viewDidLoad {
    [super viewDidLoad];
    arrAccount = @[@"My test account 1", @"My test Account 2", @"My test Account 3", @"My test Account 4", @"My test Account 5", @"My test Account 6", @"My test Account 7", @"My test Account 8"];
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath] ;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
    if (indexPath.row ==5 || indexPath.row ==6|| indexPath.row ==4 || indexPath.row == 7) {
        cell.backgroundColor = UIColorFromRGB(0x945200);
    }
    else {
        cell.backgroundColor = UIColorFromRGB(0x61E88B);
    }
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"money"]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrAccount[indexPath.row]];
    cell.detailTextLabel.text = @"1000,00$";
    cell.accessoryView = imageView;
    
    return cell;
}

@end
