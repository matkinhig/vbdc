//
//  AccountDetail.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/10/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountDetail : NSObject
@property (nonatomic, readonly) NSString* accountName;
@property (nonatomic, readonly) NSString* accountAmount;
@property (nonatomic, readonly) NSString* accountNumber;
@end

NS_ASSUME_NONNULL_END
