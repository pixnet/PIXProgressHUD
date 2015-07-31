//
//  PIXViewController.m
//  PIXProgressHUD
//
//  Created by dolphin su on 07/30/2015.
//  Copyright (c) 2015 dolphin su. All rights reserved.
//

#import "PIXViewController.h"
#import "PIXProgressHUD.h"

@interface PIXViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation PIXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"colorful.jpg"]];
    _imageView.center = self.view.center;
    [self.view addSubview:_imageView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [PIXProgressHUD show];
    [self performSelector:@selector(stopAnimation) withObject:nil afterDelay:5];
}

- (void)stopAnimation {
    [PIXProgressHUD dismiss];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
