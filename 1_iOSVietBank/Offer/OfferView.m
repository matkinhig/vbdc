//
//  OfferView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/1/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "OfferView.h"
#import "OfferCell.h"
#import "OfferSignView.h"

@interface OfferView () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation OfferView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellName = @"OfferCell";
    OfferCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    OfferSignView * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"OfferSignView"];
    [self presentViewController:newView animated:YES completion:nil];
    
}

@end
