//
//  ChangeCardLimitSignView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/25/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ChangeCardLimitSignView.h"

@interface ChangeCardLimitSignView ()

@end

@implementation ChangeCardLimitSignView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
