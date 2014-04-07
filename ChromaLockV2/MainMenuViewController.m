//
//  MainMenuViewController.m
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 31/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ViewController.h"

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

- (IBAction)selectStage:(id)sender {
    if([sender tag] != 0)
        self.selectedStage = [sender tag];
    
    [self performSegueWithIdentifier:@"MenuToGame" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier  isEqual: @"MenuToGame"]){
        ViewController *vc = [segue destinationViewController];
        vc.stage = self.selectedStage;
    }
}

- (IBAction)unwindToMainMenu:(UIStoryboardSegue *)unwindSegue{
}


@end
