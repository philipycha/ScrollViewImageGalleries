//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@property (weak, nonatomic) IBOutlet UIScrollView *galleryScrollView;
@property (strong, nonatomic, readonly) NSArray<UIImage *> *lighthouseImages;

@property (strong, nonatomic) UIImageView *lighthouseImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupPagingImages {
    
    CGFloat imageXPosition = 0;
    
    CGFloat scrollViewWidth = CGRectGetWidth(self.galleryScrollView.frame);
    CGFloat scrollViewHeight = CGRectGetHeight(self.galleryScrollView.frame);
    
    for (UIImage *lighthouseImages in self.lighthouseImages) {
        
        UIImageView *lighthouseImageView = [[UIImageView alloc] initWithImage:lighthouseImages];
        
        lighthouseImageView.frame = CGRectMake(imageXPosition, 0, scrollViewWidth, scrollViewHeight);
        lighthouseImageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [self.galleryScrollView addSubview:lighthouseImageView];
        
        imageXPosition += scrollViewWidth;
    }
    
    self.galleryScrollView.contentSize = CGSizeMake(scrollViewHeight, scrollViewWidth* self.lighthouseImages.count);
    
    self.galleryScrollView.pagingEnabled = YES;
    
}

- (NSArray<UIImage *> *)lighthouseImages {
    return @[
             [UIImage imageNamed:@"Lighthouse"],
             [UIImage imageNamed:@"Lighthouse-in-Field"],
             [UIImage imageNamed:@":ighthouse-night"],
             ];
}




@end
