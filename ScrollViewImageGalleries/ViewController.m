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
@property (strong, nonatomic) UIImageView *imageView1;
@property (strong, nonatomic) UIImageView *imageView2;
@property (strong, nonatomic) UIImageView *imageView3;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    
    imageView1.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:imageView1];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView1
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView1
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView1
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView1
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    UIImageView *imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse"]];
    
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    
    imageView2.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:imageView2];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView2
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView2
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:imageView1
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView2
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView2
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    
    
    UIImageView *imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    
    imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    
    imageView3.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:imageView3];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView3
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView3
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:imageView2
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView3
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView3
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    
   self.galleryScrollView.contentSize = CGSizeMake(self.galleryScrollView.frame.size.width * 3, self.galleryScrollView.frame.size.height);
    self.galleryScrollView.pagingEnabled = YES;

    
}




@end
