//
//  ListViewController.h
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/16.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,ListViewType)
{
    ListViewTypeNone = 0,
    ListViewTypevImage,
    ListViewTypeVisualEffect
};

@interface ListViewController : UIViewController

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSString    *imageName;
@property (assign, nonatomic) ListViewType  type;

- (instancetype)initWithModeType:(ListViewType)type;

@end
