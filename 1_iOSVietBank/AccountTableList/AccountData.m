//
//  AccountData.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "AccountData.h"
#import "AccountList.h"
#import "AccountType.h"

@implementation AccountData
+ (AccountData*) shareData {
    static AccountData * accountData = nil;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        accountData = [[AccountData alloc] init];
    });
    return accountData;
}

- (instancetype)init {
    if (self = [super init]) {
        NSString * filePath = [[NSBundle mainBundle] pathForResource:@"DataAccount" ofType:@"plist"];
        NSArray * arr = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray * tmpArray = [[NSMutableArray alloc]initWithCapacity:[arr count]];
        
        for (NSDictionary *dict in arr) {
            NSArray *tmpAccountList = [dict objectForKey:@"listaccount"];
            NSMutableArray * arrayAccount = [NSMutableArray arrayWithCapacity:[tmpAccountList count]];
            for (NSString * string in tmpAccountList) {
                [arrayAccount addObject:[[AccountList alloc] init:string]];
            }
            [tmpArray addObject:[[AccountType alloc] initWithName:[dict objectForKey:@"typeaccount"] andArray:arrayAccount]];
        }
        
        _arrAccount = [NSMutableArray arrayWithArray:tmpArray];
    }
    return self;
}
@end
