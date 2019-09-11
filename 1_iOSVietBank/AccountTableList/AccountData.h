//
//  AccountData.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountData : NSObject
@property (strong,nonatomic) NSMutableArray * arrAccount;
+ (AccountData*) shareData;

@end

NS_ASSUME_NONNULL_END
