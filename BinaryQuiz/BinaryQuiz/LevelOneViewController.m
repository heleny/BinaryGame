//
//  LevelOneViewController.m
//  BinaryQuiz
//
//  Created by helen on 10/18/13.
//  Copyright (c) 2013 heleny. All rights reserved.
//

#import "LevelOneViewController.h"

@interface LevelOneViewController () {
    @private
    UITextView *_question;
    UIButton *_buttonLeft;
    UIButton *_buttonRight;
    
    NSArray *_quizs;
    int _index;
}

@end

@implementation LevelOneViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(onBack:)];
        _quizs = @[@"Decimal 3 in binary", @"Binary 10001 in decimal", @"11111 AND 01010", @"Decimal 22 in binary"];
        _index = 0;
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    
    self.title = @"Level 1";
    self.view.backgroundColor =[UIColor whiteColor];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    _question = [[UITextView alloc] initWithFrame:CGRectMake((screenWidth - 250.0f)/2, 100.0f, 250.0f, 150.0f)];
    _question.text = _quizs[_index];
    _question.textColor = [UIColor blackColor];
    _question.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _question.font = [UIFont boldSystemFontOfSize:22.0f];
    [self.view addSubview:_question];
    
    CGFloat xOffset = 10.0f;
    CGFloat yOffset = 100.0f + _question.bounds.size.height + 80.0f;
    
    _buttonLeft = [UIButton buttonWithType:UIButtonTypeSystem];
    _buttonLeft.frame = CGRectMake(xOffset, yOffset, 140, 50);;
    [_buttonLeft setTitle:@"11" forState:UIControlStateNormal];
    _buttonLeft.titleLabel.font = [UIFont boldSystemFontOfSize:25.0f];
    _buttonLeft.backgroundColor = [UIColor greenColor];
    [_buttonLeft addTarget:self action:@selector(onClickButtonLeft:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonLeft];
    
    xOffset += _buttonLeft.bounds.size.width + 20.0f;
    _buttonRight = [UIButton buttonWithType:UIButtonTypeSystem];
    _buttonRight.frame = CGRectMake(xOffset, yOffset, 140, 50);
    [_buttonRight setTitle:@"101" forState:UIControlStateNormal];
    _buttonRight.titleLabel.font = [UIFont boldSystemFontOfSize:25.0f];
    _buttonRight.backgroundColor = [UIColor greenColor];
    [_buttonRight addTarget:self action:@selector(onClickButtonRight:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_buttonRight];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Selector

- (void)onBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)onClickButtonLeft:(id)sender
{
    switch (_index) {
        case 0:
            _question.text = _quizs[++_index];
            [_buttonLeft setTitle:@"21" forState:UIControlStateNormal];
            [_buttonRight setTitle:@"17" forState:UIControlStateNormal];
            break;
            
        case 1:
            break;
            
        case 2:
            break;
        
        case 3:
            break;
            
        default:
            break;
    }
}

- (void)onClickButtonRight:(id)sender
{
    
}
@end
