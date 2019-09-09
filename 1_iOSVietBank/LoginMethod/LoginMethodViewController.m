//
//  LoginMethodViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "LoginMethodViewController.h"

@interface LoginMethodViewController ()
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation LoginMethodViewController
- (IBAction)change:(id)sender {
    
}

- (void) initView {
    int numberOfPage = 2;
    _centerView = [[NSMutableArray alloc] init];
    for (int i = 0 ; i < numberOfPage; i++) {
        [_centerView addObject:[NSNull null]];
    }
    
    CGSize content = _scrollView.frame.size;
    content.width = _scrollView.frame.size.width * numberOfPage;
    [_scrollView setContentSize:content];
    [_scrollView setDelegate:self];
    
    [_scrollView setPagingEnabled:YES];
    
    [_scrollView setBounces:NO];
    [_scrollView setScrollsToTop:NO];
    [_scrollView setScrollEnabled:YES];
    
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    
    [_pageControl setNumberOfPages:numberOfPage];
    [_pageControl setCurrentPage:0];
    
    _centerView = [[NSMutableArray alloc] init];
    
    [_centerView addObject:@"unlock_lock_pattern-default"];
    [_centerView addObject:@"unlock_pin-default"];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    for (int i = 0; i < numberOfPage; i++) {
        CenterView * View = [[[NSBundle mainBundle] loadNibNamed:@"CenterView" owner:nil options:nil] objectAtIndex:0];
        NSString *val = [_centerView objectAtIndex:i];
        View.imageView.image = [UIImage imageNamed:val];
        
        View.frame = CGRectMake(View.frame.size.width, 0, View.frame.size.width, View.frame.size.height);
        [_scrollView addSubview:View];
    }
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat pageWidth = _scrollView.frame.size.width;
    _pageControl.currentPage = floor(_scrollView.contentOffset.x);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}


@end
