//
//  MapView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 9/12/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "MapView.h"
#define size_zoom 2

@interface MapView () <UIScrollViewDelegate, UIGestureRecognizerDelegate>
@property (weak, nonatomic) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *photo;
@property (strong, nonatomic) IBOutlet UILabel *lbAddress;
@end

@implementation MapView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self addDetailAddress];
    [self addMapToScrollView];
    
}

- (void) addMapToScrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, self.view.bounds.size.height - self.lbAddress.center.y - 10)];
    scrollView.delegate = self;
    scrollView.minimumZoomScale = 0.2;
    scrollView.maximumZoomScale = 4;
    scrollView.zoomScale = 1;
    scrollView.clipsToBounds = YES;
    
    self.photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 400)];
    self.photo.image = [UIImage imageNamed:@"map"];
    self.photo.contentMode = UIViewContentModeScaleAspectFit;
    
    self.photo.userInteractionEnabled = YES;
    self.photo.multipleTouchEnabled = YES;
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onTap:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.delegate = self;
    
    [self.photo addGestureRecognizer:singleTap];
    
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onDoubleTap:)];
    
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.delegate = self;
    [self.photo addGestureRecognizer:doubleTap];
    
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    [scrollView addSubview:self.photo];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
}

- (void) onTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale * size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}

- (void) onDoubleTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale / size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}
- (void) zoomRectForScale: (float) scale
               withCenter: (CGPoint) center {
    
    CGRect zoomRect;
    CGSize scrollViewSize = self.scrollView.bounds.size;
    
    zoomRect.size.width = scrollViewSize.width / scale;
    zoomRect.size.height = scrollViewSize.height / scale;
    zoomRect.origin.x = center.x - (zoomRect.size.width / 2);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2);
    
    [self.scrollView zoomToRect:zoomRect animated:YES];
}
- (UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.photo;
}

@end
