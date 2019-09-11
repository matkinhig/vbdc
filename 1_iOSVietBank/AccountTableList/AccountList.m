//
//  AccountType.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "AccountList.h"

@implementation AccountList

- (instancetype)init:(NSString *)string {
    if (self = [super init]) {
        NSArray * dataAccountType = [string componentsSeparatedByString:@"|"];
        _accountName = dataAccountType[0];
        _accountAmount = dataAccountType[1];
        _accountNumber = dataAccountType[2];
    }
    return self;
}

@end
