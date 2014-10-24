//
//  ViewController.m
//  CustomMediaPlayer
//
//  Created by kehlin swain on 9/1/14.
//  Copyright (c) 2014 kehlin swain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize moviePlayer;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [[NSURL alloc]initWithString:@"http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v"];
    //Create movie player
    moviePlayer = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [moviePlayer.view setFrame:CGRectMake(40, 100, 380, 150)];
    
    [self.view addSubview:moviePlayer.view];
    
    
    //some additional customization
    moviePlayer.fullscreen = YES;
    moviePlayer.allowsAirPlay = YES;
    moviePlayer.shouldAutoplay = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
