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
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 180, self.view.frame.size.width, self.view.frame.size.height - (40+40+150+44))];
}



- (IBAction)showMoreInfo:(id)sender {
    self.viewInput.backgroundColor = [UIColor greenColor];
    self.viewInput.frame = CGRectMake(0,0, self.view.frame.size.width, 650);
  [self.view addSubview:self.scrollView];
    
//    self.viewMoreInfo.hidden = NO;
    self.btnMoreInfo.hidden = YES;
    
    

    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 800);
    [self.scrollView addSubview:self.viewInput];
    
    
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
