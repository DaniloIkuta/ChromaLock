//
//  GameViewController.h
//  ChromaLock
//
//  Created by Danilo Makoto Ikuta on 25/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <UIKit/UIKit.h>

#define X0 388  //Refere-se ao Xo da tela
#define Y0 268  //Refere-se ao Yo da tela
#define larguraTela 1024
#define alturaTela 768
#define XDist 133  //Tamanho X de um bloco
#define YDist 113  //Tamanho Y de um bloco

@interface GameViewController : UIViewController


//@property NSMutableArray *gridX; //Sendo gerado no viewDidLoad, if needed will be revived
@property NSMutableArray *gridX;
@property NSMutableArray *imageGridX;
@property int winLight;
@property int winGrid;


-(id)initWithStage:(int)stage;

-(void)generateStage;

@end
