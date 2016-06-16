//
//  ListCell.h
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/16.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface ListCell : UITableViewCell

- (void)fillData:(id)obj type:(ListViewType)type;

@end
