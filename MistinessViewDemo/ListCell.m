//
//  ListCell.m
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/16.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import "ListCell.h"
#import "UIImage+ImageEffects.h"
#import "UIImage+VisualEffect.h"

@implementation ListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

- (void)fillData:(id)obj type:(ListViewType)type
{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    UIImage * image = [UIImage imageNamed:obj];
    image = [image applyLightEffect];
    
    for (int i = 0; i < 1; i++) {
        UIImageView * imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(40 * i, 10, 40, 40);
//        imageView.image = image;
//        [self addSubview:imageView];
//        [imageView addVisualEffectView];
        
        imageView.image = image;
//        imageView.image = [UIImage imageNamed:obj];
        [self addSubview:imageView];

//
//        switch (type) {
//            case ListViewTypevImage:
//                imageView.image = [image applyLightEffect];
//                break;
//            case ListViewTypeVisualEffect:
//                imageView.image = [UIImage imageNamed:obj];
//                [imageView addVisualEffectView];
//                break;
//            case ListViewTypeNone:
//                imageView.image = [UIImage imageNamed:obj];
//                break;
//                
//            default:
//                break;
//        }
    }
}

@end
