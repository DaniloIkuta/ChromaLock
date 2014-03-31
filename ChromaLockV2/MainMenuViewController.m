//
//  MainMenuViewController.m
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 31/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (IBAction)selectStage1:(id)sender {
    self.selectedStage = 1;
    [self performSegueWithIdentifier:@"MenuToGame" sender:self];
}

- (IBAction)selectStage2:(id)sender {
    self.selectedStage = 2;
    [self performSegueWithIdentifier:@"MenuToGame" sender:self];
}

- (IBAction)selectStage3:(id)sender {
    self.selectedStage = 3;
    [self performSegueWithIdentifier:@"MenuToGame" sender:self];
}

@end
