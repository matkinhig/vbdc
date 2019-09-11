//
//  AccountType.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountList : NSObject

@property (strong, nonatomic) NSString * accountName;
@property (strong, nonatomic) NSString * accountAmount;
@property (strong, nonatomic) NSString * accountNumber;

- (instancetype)init: (NSString * )string;
@end

NS_ASSUME_NONNULL_END
