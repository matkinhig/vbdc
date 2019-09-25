//
//  ConfirmNewPinView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/19/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ConfirmNewPinView.h"

@interface ConfirmNewPinView ()
@property (strong, nonatomic) IBOutlet UILabel *lbPin;
@property (strong, nonatomic) NSString *myPickerValue;
@end

@implementation ConfirmNewPinView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"daqua");
    operatorPressed = false;
    firstEntry = NULL;
    secondEntry = NULL;
    self.lbPin.enabled = NO;
}
- (IBAction)deletePin:(id)sender {
    firstEntry = NULL;
    self.lbPin.text = NULL;
}

- (IBAction)oke:(id)sender {
    
}

- (IBAction)numberPress:(UIButton *)sender{
    if (firstEntry == NULL) {
        firstEntry = [NSString stringWithFormat:@"%i",(int)sender.tag];
        self.myPickerValue = firstEntry;
        self.lbPin.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", self.lbPin.text);
    }
    else {
        firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry,(int)sender.tag];
        self.lbPin.text = firstEntry;
        self.myPickerValue = firstEntry;
        self.lbPin.text = [@"" stringByPaddingToLength: [self.myPickerValue length] withString: @"*" startingAtIndex:0];
        NSLog(@"%@", self.lbPin.text);
    }
}

@end
