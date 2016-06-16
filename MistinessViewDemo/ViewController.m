//
//  ViewController.m
//  MistinessViewDemo
//
//  Created by guochaoyang on 16/6/15.
//  Copyright © 2016年 guochaoyang. All rights reserved.
//

#import "ViewController.h"
#import "DeatilViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)NSArray * imageList;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray* urlArray =  [[NSBundle mainBundle] URLsForResourcesWithExtension:@"jpg" subdirectory:nil];
    NSMutableArray* nameArray = [[NSMutableArray alloc] init];
    for( int i =0; i<urlArray.count; i++ ) {
        NSURL* url = urlArray[i];
        NSString* name = [url relativeString];
        [nameArray addObject:name];
    }
    self.imageList = nameArray;
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;

    self.tabelView.frame = CGRectMake(0, 0, width, height-64);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.imageList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"cellIdentifier";
    UITableViewCell * cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = self.imageList[indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SendValue"]) {
        DeatilViewController *detail = segue.destinationViewController;
        UITableViewCell * cell = (UITableViewCell *)sender;
        detail.imageName = cell.textLabel.text;
        NSLog(@"%@",[segue.destinationViewController class]);
    }
}

@end
