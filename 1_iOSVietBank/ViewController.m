//
//  ViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 8/30/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgVietbank;
@property (weak, nonatomic) IBOutlet UIButton *btnMenu;
@property (weak, nonatomic) IBOutlet UIButton *btnActivation;
@property (weak, nonatomic) IBOutlet UILabel *lbActive;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lbActive.alpha = 0;
    self.imgVietbank.alpha = 0;
    
}
- (IBAction)openMenu:(id)sender {
}
- (IBAction)openActivation:(id)sender {
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"image's alpha = %1.0f", self.imgVietbank.alpha);
    [UIView animateWithDuration:4
                     animations:^{
                         self.imgVietbank.alpha= 1;
                         NSLog(@"image's alpha = %1.0f",self.imgVietbank.alpha);
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:3
                                          animations:^{
                                              self.lbActive.center = CGPointMake(self.lbActive.center.x, 360);
                                              self.lbActive.alpha =1 ;
                                          }completion:nil];
                     }];
}
@end
