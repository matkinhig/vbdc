//
//  ShowTransactionScreen.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/13/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ShowTransactionScreen.h"

@interface ShowTransactionScreen ()

@end

@implementation ShowTransactionScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"deallocating new view controller");
}


- (IBAction)dismiss:(id)sender {
    [self.delegate didPressedButtonInController:self];
}

@end
