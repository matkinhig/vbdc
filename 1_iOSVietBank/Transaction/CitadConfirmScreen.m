//
//  CitadConfirmScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/11/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "CitadConfirmScreen.h"

@interface CitadConfirmScreen ()

@end

@implementation CitadConfirmScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 60,self.view.frame.size.width, 450)];
    [self.view addSubview:_scrollView];
    [_scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    [_scrollView addSubview:_imgAccount];
    [_scrollView addSubview:_lbAccount];
    [_scrollView addSubview:_lbVND];
    [_scrollView addSubview:_lbAmount];
    [_scrollView addSubview:_lbToday];
    [_scrollView addSubview:_lbPaytemp];
    [_scrollView addSubview:_imgTranfer];
    [_scrollView addSubview:_lbCitad];
    [_scrollView addSubview:_lbAccNumber];
    [_scrollView addSubview:_lbBankname];
    [_scrollView addSubview:_lbOtherBank];
    [_scrollView addSubview:_lbBeneficary];
    [_scrollView addSubview:_lbOfficialName];
    [_scrollView addSubview:_lbPayRef];
    [_scrollView addSubview:_lbAvgPay];
    [_scrollView addSubview:_lbSource];
    [_scrollView addSubview:_imgTypeAcc];
    [_scrollView addSubview:_lbCurrentAcc];
    [_scrollView addSubview:_lbEstimated];
    [_scrollView addSubview:_lbAmountBalance];
    [_scrollView addSubview:_lbCategory];
    [_scrollView addSubview:_imgFolder];
    [_scrollView addSubview:_lbPickOne];
}



@end
