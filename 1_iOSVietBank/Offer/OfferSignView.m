    //
//  OfferSignView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/1/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "OfferSignView.h"
#import "../Dashboard/DashBoardViewController.h"

@interface OfferSignView ()

@end

@implementation OfferSignView

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnChangePage:(id)sender {
    DashBoardViewController * newView = [self.storyboard instantiateViewControllerWithIdentifier:@"DBoardView"];
    [self presentViewController:newView animated:YES completion:nil];
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
