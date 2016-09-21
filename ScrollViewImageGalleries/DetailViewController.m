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
@property (strong, nonatomic) IBOutlet UIImageView *lighthouseImageView;

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
    
    [self.lighthouseImageView setImage:self.image];
    
    self.lighthouseImageView.clipsToBounds = YES;
    
   // [self.detailScrollView addSubview:self.lighthouseImageView];
    
    self.detailScrollView.minimumZoomScale = 0.25;
    self.detailScrollView.maximumZoomScale = 4.0;
    
 //   self.lighthouseImageView.center = self.detailScrollView.center;
   
//    self.detailScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.lighthouseImageView.frame), CGRectGetHeight(self.lighthouseImageView.frame));

}



- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.lighthouseImageView;
}

@end
