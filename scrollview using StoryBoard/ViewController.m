//
//  ViewController.m
//  scrollview using StoryBoard
//
//  Created by Jason Zhou on 7/4/14.
//  Copyright (c) 2014 ; Zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIScrollView *scrollView;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    self.scrollView = scrollView;
    [self.view addSubview:self.scrollView];
    
#warning ?????????????????????....
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"minion@2x.png" ofType:nil];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"tom" ofType:@"plist"];
    
//
//    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
//        NSLog(@"~~~~~~~~");
//        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:path]];
//        CGSize imageSize = imageView.image.size;
//        _scrollView.contentSize = imageSize;
//    }else{
//        NSLog(@"ERROR .. at path %@", path);
//    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"test"]];
    
    CGSize imageSize = imageView.image.size;
    _scrollView.contentSize  = imageSize;
    
   self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 50);
    self.scrollView.bounces = NO;
    self.scrollView.decelerationRate = UIScrollViewDecelerationRateFast;
    
    [_scrollView addSubview:imageView];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
