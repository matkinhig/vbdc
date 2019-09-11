//
//  AccountType.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "AccountType.h"

@implementation AccountType
- (instancetype)initWithName:(NSString *)accountType andArray:(NSMutableArray *)arrAccount{
    if (self = [super init]) {
        self.accountTypeName = accountType;
        self.arrayAccount = arrAccount;
    }
    return self;
}
@end
