//
//  UnlockMethodViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "UnlockMethodViewController.h"

@interface UnlockMethodViewController ()


@end

@implementation UnlockMethodViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self changePage: _pageControl];
    
}

- (IBAction)changePage:(id)sender{
    NSString* detailPin  = @"PIN CODE";
    NSString* detailDot = @"CONNECT THE DOT";
    NSString* desPin = @"You can choose 6 digits long pin code";
    NSString* desDot = @"You can connect dots";
    
    if(self.pageControl.currentPage == 0){
        _lbDetail.text = detailPin;
        _lbDes.text = desPin;
        _imgView.image = [UIImage imageNamed:@"unlock_pin-default"];
        //[self.navigationController pushViewController: animated:YES];
    }
    if (self.pageControl.currentPage == 1) {
        _lbDetail.text = detailDot;
        _lbDes.text = desDot;
        _imgView.image = [UIImage imageNamed:@"unlock_lock_pattern-default"];
    }
}
- (IBAction)chuyenView:(id)sender {
    if(self.pageControl.currentPage == 0){
        PinViewController * pinView = [[PinViewController alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:pinView animated:YES completion:nil];
        NSLog(@"pin");
    }
    if (self.pageControl.currentPage == 1){
        NSLog(@"pattern");
        PatternViewController * patternView = [[PatternViewController alloc] init];
        patternView.isSomethingEnabled = NO;
        [self presentViewController:patternView animated:YES completion:nil];
    }
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
