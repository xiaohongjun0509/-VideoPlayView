//
//  ViewController.m
//  03-测试VideoPlayView
//
//  Created by hongjunxiao on 15/8/17.
//  Copyright (c) 2015年 hongjunxiao. All rights reserved.
//

#import "ViewController.h"
#import "VideoPlayView.h"

@interface ViewController () <VideoPlayViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, weak) VideoPlayView *playView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VideoPlayView *viewPlayView = [VideoPlayView videoPlayView];
    viewPlayView.frame = self.imageView.bounds;
    [self.imageView addSubview:viewPlayView];
    viewPlayView.delegate = self;
    self.playView = viewPlayView;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:@"http://v1.mukewang.com/3e35cbb0-c8e5-4827-9614-b5a355259010/L.mp4"]];
    [self.playView setPlayerItem:item];
}

@end
