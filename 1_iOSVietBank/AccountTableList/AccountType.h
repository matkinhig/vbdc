//
//  AccountType.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountType : NSObject
@property (strong, nonatomic ) NSString * accountTypeName;
@property (strong, nonatomic) NSMutableArray * arrayAccount;

- (instancetype)initWithName: (NSString*) accountType andArray: (NSArray *) arrAccount;

@end

NS_ASSUME_NONNULL_END
