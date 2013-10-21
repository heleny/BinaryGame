//
//  ViewController.m
//  BinaryQuiz
//
//  Created by helen on 10/18/13.
//  Copyright (c) 2013 heleny. All rights reserved.
//

#import "LaunchViewController.h"
#import "Constant.h"
#import "LevelOneViewController.h"

@interface LaunchViewController () {
    @private
    UITextView *_title;
    UIButton *_play;
}

@end

@implementation LaunchViewController

- (void)loadView
{
    [super loadView];
    
    self.title = @"Binary Quiz";
    
    _play = [UIButton buttonWithType:UIButtonTypeSystem];
    _play.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 300)/2, 350, 300, 80);
    _play.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [_play setTitle:kPlayLabel forState:UIControlStateNormal];
    _play.titleLabel.textColor = [UIColor blackColor];
    _play.titleLabel.font = [UIFont systemFontOfSize:25.0f];
    _play.backgroundColor = [UIColor greenColor]; //kColorGray
    [_play addTarget:self action:@selector(onPlay:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_play];
    
    _title = [[UITextView alloc] initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 200)];
    _title.text = kCannotDoBinaryUnderPressure;
    _title.textColor = [UIColor blackColor];
    _title.font = [UIFont boldSystemFontOfSize:25.0f];
    [self.view addSubview:_title];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Selector

- (void)onPlay:(id)sender
{
    LevelOneViewController *levelOneViewController = [[LevelOneViewController alloc] init];
    [self.navigationController pushViewController:levelOneViewController animated:YES];
}

@end
