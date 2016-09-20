//
//  DetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *detailScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *lighthouseImageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.detailScrollView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:NO];
    
    UIImageView *detailImageView = [[UIImageView alloc] initWithImage:self.image];
    
    detailImageView.clipsToBounds = YES;
    
    [self.detailScrollView addSubview:detailImageView];
    
    self.detailScrollView.minimumZoomScale = 0.5;
    self.detailScrollView.maximumZoomScale = 4;
    
    self.detailScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.lighthouseImageView.frame), CGRectGetHeight(self.lighthouseImageView.frame));

}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.lighthouseImageView;
}

@end
