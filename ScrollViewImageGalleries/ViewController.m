//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Philip Ha on 2016-09-19.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

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
    
    self.imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.imageView1.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:self.imageView1];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    self.imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse"]];
    
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.imageView2.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:self.imageView2];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.imageView1
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    
    
    self.imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    
    self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.imageView3.userInteractionEnabled = YES;
    
    [self.galleryScrollView addSubview:self.imageView3];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.imageView2
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.galleryScrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.galleryScrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
    
    
    self.imageView1.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView3.contentMode = UIViewContentModeScaleAspectFit;
    
   self.galleryScrollView.contentSize = CGSizeMake(self.galleryScrollView.frame.size.width * 3, self.galleryScrollView.frame.size.height);
    self.galleryScrollView.pagingEnabled = YES;
    
    UITapGestureRecognizer *tapImage = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImage:)];
    UITapGestureRecognizer *tapImage2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImage2:)];
    UITapGestureRecognizer *tapImage3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImage3:)];
    
    [self.imageView1 setUserInteractionEnabled:YES];
    [self.imageView2 setUserInteractionEnabled:YES];
    [self.imageView3 setUserInteractionEnabled:YES];
    
    [self.imageView1 addGestureRecognizer:tapImage];
    [self.imageView2 addGestureRecognizer:tapImage2];
    [self.imageView3 addGestureRecognizer:tapImage3];
 
    
}

- (void)tapImage:(UITapGestureRecognizer *)sender {
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detailViewController"];
    [self.navigationController pushViewController:detail animated:YES];
    detail.image = self.imageView1.image;
}

- (void)tapImage2:(UITapGestureRecognizer *)sender {
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detailViewController"];
    [self.navigationController pushViewController:detail animated:YES];
    detail.image = self.imageView2.image;
}

- (void)tapImage3:(UITapGestureRecognizer *)sender {
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detailViewController"];
    [self.navigationController pushViewController:detail animated:YES];
    detail.image = self.imageView3.image;
}






@end
