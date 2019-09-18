//
//  DBView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/16/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "DBView.h"

@interface DBView ()
@property (strong, nonatomic) IBOutlet UIView *viewInput;
@property (strong, nonatomic) IBOutlet UIButton *btnMoreInfo;
@property (strong, nonatomic) IBOutlet UIView *viewMoreInfo;
@property (strong, nonatomic) IBOutlet UIView *viewMoneyInput;
@property (strong, nonatomic) IBOutlet UIView *viewDescription;
@property (strong, nonatomic) UIScrollView * scrollView;
@end

@implementation DBView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewMoreInfo.hidden = YES;
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 180, self.view.frame.size.width, self.view.frame.size.height - (40+40+150+44))];
}

- (void) createScrollView {
//    CGRect frame = self.viewMoreInfo.frame;
//    frame.size.height = 650;
//    self.viewMoreInfo.frame = frame;
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 44+150, self.view.frame.size.width, self.view.frame.size.height - (40+40+150+44))];
//    [self.view addSubview:self.scrollView];
}



- (IBAction)showMoreInfo:(id)sender {
    self.viewInput.backgroundColor = [UIColor redColor];
    self.viewMoreInfo.backgroundColor = [UIColor greenColor];
    self.viewMoreInfo.frame = CGRectMake(0,0, self.view.frame.size.width, 500);
  
    
    self.viewMoreInfo.hidden = NO;
    self.btnMoreInfo.hidden = YES;
    
    

    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.viewMoreInfo.frame.size.height);
    [self.scrollView addSubview:self.viewMoreInfo];
    [self.view addSubview:self.scrollView];
    
    NSLog(@"%f", self.view.frame.size.width);
    NSLog(@"%f", self.view.frame.size.height);
    
    //    [UIView animateWithDuration:1 animations:^{
    //
    //    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
