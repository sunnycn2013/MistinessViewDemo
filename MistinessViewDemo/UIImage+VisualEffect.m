//
//  UIImage+VisualEffect.m
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/16.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import "UIImage+VisualEffect.h"

@implementation UIImageView (VisualEffect)

- (void)addVisualEffectView
{
    if([[UIDevice currentDevice] systemVersion].floatValue >= 8.0)
    {
        UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        visualEffectView.frame = self.bounds;
        [self addSubview:visualEffectView];
    }else
    {
        NSLog(@"current ios is blow ios8...");
    }
}

@end
