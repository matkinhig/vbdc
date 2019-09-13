//
//  PatternVController.h
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/13/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, PatternMode) {
    PatternModeValidation,
    PatternModeModify,
};
@protocol PatternViewControllerDelegate <NSObject>

-(void)unlockedPattern;
-(void)modifiedPattern;
-(void)cancelEditing;

@end

@interface PatternVController : UIViewController
-(instancetype)initWithMode:(PatternMode)mode delegate:(id<PatternViewControllerDelegate>)delegate;
@end



NS_ASSUME_NONNULL_END
