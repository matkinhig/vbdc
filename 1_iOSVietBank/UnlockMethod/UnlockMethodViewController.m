//
//  UnlockMethodViewController.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/5/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "UnlockMethodViewController.h"
#import "../PinUnlock/PinViewController.h"

#define PHOTO_WIDTH 360
#define PHOTO_HEIGHT 360
#define NUM_PHOTO 2

@interface UnlockMethodViewController () <UIScrollViewDelegate>
{
    NSString* detailPin;
    NSString* detailDot;
    NSString* desPin;
    NSString* desDot;
    NSArray * arrayImage;
    NSArray * arrayDetail;
    NSArray * arrayDes;
}
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIPageControl *pageControl;
@property (strong,nonatomic) PinViewController * pinView ;
@property (strong,nonatomic) PatternViewController * patternView;

@end

@implementation UnlockMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayDetail = @[@"PIN CODE",@"CONNECT THE DOT"];
    arrayDes = @[@"You can choose 6 digits long pin code", @"You can connect dots"];
    arrayImage = @[@"unlock_pin-default",@"unlock_lock_pattern-default"];
    
    detailPin  = @"PIN CODE";
    detailDot = @"CONNECT THE DOT";
    desPin = @"You can choose 6 digits long pin code";
    desDot = @"You can connect dots";
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    
    // Do any additional setup after loading
    CGSize size = self.view.bounds.size;
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake((size.width - PHOTO_WIDTH) * 0.5,  150,PHOTO_WIDTH, PHOTO_HEIGHT*1.31)];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(PHOTO_WIDTH * NUM_PHOTO, PHOTO_HEIGHT * 1.31);
    self.scrollView.pagingEnabled = YES;
    
    
    //    [self.scrollView addSubview:_imgView];
    //    [self.scrollView addSubview:_lbDes];
    //    [self.scrollView addSubview:_lbDetail];
    
    //    [self.scrollView addSubview:_pageControl];
        for (int i = 1; i < arrayImage.count + 1; i++) {
            NSString * fileImageName = [NSString stringWithFormat:@"%d",i];
            UIImage *image = [UIImage imageNamed:fileImageName];
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            imageView.frame = CGRectMake((i - 1) * PHOTO_WIDTH, 0, PHOTO_WIDTH, PHOTO_HEIGHT*1.31);
            [self.scrollView addSubview:imageView];
        }
    [self.view addSubview:self.scrollView];
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, size.height - 64- 40, size.width, 40)];
    self.pageControl.numberOfPages = NUM_PHOTO;
    [self.pageControl addTarget:self action:@selector(onPageChange:)
               forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.pageControl];
    
    //[self changePage: _pageControl];
    
}

- (void) onPageChange:(id)ssender{
    self.scrollView.contentOffset = CGPointMake(self.pageControl.currentPage * PHOTO_WIDTH, 0);
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    self.pageControl.currentPage = self.scrollView.contentOffset.x /PHOTO_WIDTH;
}

- (IBAction)changePage:(id)sender{
    
    if(self.pageControl.currentPage == 0){
        _lbDetail.text = detailPin;
        _lbDes.text = desPin;
        //[self.navigationController pushViewController: animated:YES];
    }
    if (self.pageControl.currentPage == 1) {
        _lbDetail.text = detailDot;
        _lbDes.text = desDot;
    }
}
- (IBAction)chuyenView:(id)sender {
    if(self.pageControl.currentPage == 0){
        _pinView = [self.storyboard instantiateViewControllerWithIdentifier:@"PinUnlock"];
        [self presentViewController:_pinView animated:YES completion:nil];
    }
    if (self.pageControl.currentPage == 1){
        _patternView = [self.storyboard instantiateViewControllerWithIdentifier:@"PatternUnlock"];
        [self presentViewController:_patternView animated:YES completion:nil];
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
