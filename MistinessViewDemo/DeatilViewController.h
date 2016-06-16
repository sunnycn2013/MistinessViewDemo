//
//  DeatilViewController.h
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/15.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeatilViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *firstImage;
@property (weak, nonatomic) IBOutlet UIImageView *secondImage;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel     *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel     *secondLabel;

@property (strong, nonatomic) NSString    *imageName;

@end
