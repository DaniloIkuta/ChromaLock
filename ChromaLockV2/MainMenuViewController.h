//
//  MainMenuViewController.h
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 31/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuViewController : UIViewController

@property int selectedStage;

- (IBAction)selectStage1:(id)sender;
- (IBAction)selectStage2:(id)sender;
- (IBAction)selectStage3:(id)sender;

@end
