//
//  DeatilViewController.m
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/15.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import "DeatilViewController.h"
#import "UIImage+ImageEffects.h"
#import "UIImage+VisualEffect.h"
#import "ListViewController.h"

@interface DeatilViewController ()

@end

@implementation DeatilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"高斯模糊";
    
    UIImage * image = [UIImage imageNamed:self.imageName];
    _firstImage.image = [image applyLightEffect];
    _firstImage.tag = 10;
    
    _firstLabel.text = @"vImage";
    [self.view addSubview:_firstLabel];
    
    _secondImage.image = [UIImage imageNamed:self.imageName];
    [_secondImage addVisualEffectView];
    _secondImage.tag = 11;
       
    _secondLabel.text = @"UIVisualEffectView";
    [self.view addSubview:_secondLabel];
    [_imageView setImage:[UIImage imageNamed:self.imageName]];
    _imageView.tag = 12;
    
    UITapGestureRecognizer * tap0 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer * tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer * tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];

    [_firstImage addGestureRecognizer:tap0];
    [_secondImage addGestureRecognizer:tap1];
    [_imageView addGestureRecognizer:tap2];
    
}

//- (void)tapAction:(UITapGestureRecognizer *)tap
//{
//    ListViewController * list = [[ListViewController alloc] init];
//    [self.navigationController pushViewController:list animated:YES];
//}

- (void)showListViewWithModel:(ListViewType)type
{
    ListViewController * list = [[ListViewController alloc] initWithModeType:type];
    list.imageName = self.imageName;
    [self.navigationController pushViewController:list animated:YES];
}

- (void)tapAction:(UITapGestureRecognizer *)tap
{
    ListViewController *list = nil;
    NSInteger tag = tap.view.tag;
    if (tag == 10) {
        list = [[ListViewController alloc] initWithModeType:ListViewTypevImage];
        list.imageName = self.imageName;
        list.type = ListViewTypevImage;
    }
    
    if (tag == 11) {
        list = [[ListViewController alloc] initWithModeType:ListViewTypeVisualEffect];
        list.imageName = self.imageName;
        list.type = ListViewTypeVisualEffect;
    }
    
    if (tag == 12) {
        list = [[ListViewController alloc] initWithModeType:ListViewTypeNone];
        list.imageName = self.imageName;
        list.type = ListViewTypeNone;
    }
    [self.navigationController pushViewController:list animated:YES];
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString:@"tap1"]) {
//        ListViewController *list = segue.destinationViewController;
//        list.imageName = self.imageName;
//        list.type = ListViewTypevImage;
//        NSLog(@"%@",[segue.destinationViewController class]);
//    }
//    
//    if ([segue.identifier isEqualToString:@"tap2"]) {
//        ListViewController *list = segue.destinationViewController;
//        list.imageName = self.imageName;
//        list.type = ListViewTypeVisualEffect;
//        NSLog(@"%@",[segue.destinationViewController class]);
//    }
//    
//    if ([segue.identifier isEqualToString:@"tap3"]) {
//        ListViewController *list = segue.destinationViewController;
//        list.imageName = self.imageName;
//        list.type = ListViewTypeNone;
//        NSLog(@"%@",[segue.destinationViewController class]);
//    }
//}
@end
