//
//  ViewController.m
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 28/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController{
    SKView * skView;
    MyScene * scene;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    scene = [[MyScene alloc]initWithSize:skView.bounds.size withStage:self.stage];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    scene.vc = self;
    
    
    [self.view addGestureRecognizer:scene.rightSwipe];
    [self.view addGestureRecognizer:scene.leftSwipe];
    [self.view addGestureRecognizer:scene.downSwipe];
    [self.view addGestureRecognizer:scene.upSwipe];
    
    // Present the scene.
    [skView presentScene:scene];
    
}

-(void)viewDidDisappear:(BOOL)animated{
    scene = nil;
    skView = nil;
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
