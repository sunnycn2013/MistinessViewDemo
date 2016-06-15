//
//  DeatilViewController.m
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/15.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import "DeatilViewController.h"
#import "UIImage+ImageEffects.h"

@interface DeatilViewController ()

@end

@implementation DeatilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _firstImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
    UIImage * image = [UIImage imageNamed:self.imageName];
    _firstImage.image = [image applyLightEffect];
    [self.view addSubview:_firstImage];
    
    _firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(220, 200, 100, 35)];
    _firstLabel.text = @"vImage";
    [self.view addSubview:_firstLabel];
    
    _secondImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 330, 200, 200)];
    _secondImage.image = [UIImage imageNamed:self.imageName];
    [self.view addSubview:_secondImage];

    if([[UIDevice currentDevice] systemVersion].floatValue >= 8.0)
    {
        UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        visualEffectView.frame = _secondImage.bounds;
        [_secondImage addSubview:visualEffectView];
    }
    
    _secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(220, 430, 150, 35)];
    _secondLabel.text = @"UIVisualEffectView";
    [self.view addSubview:_secondLabel];
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 530, 100, 100)];
    [imageView setImage:[UIImage imageNamed:self.imageName]];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
