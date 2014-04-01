//
//  MyScene.h
//  ChromaLockV2
//

//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#define X0 327  //Refere-se ao Xo da tela
#define Y0 456  //Refere-se ao Yo da tela
#define larguraTela 1024
#define alturaTela 768
#define XDist 133  //Tamanho X de um bloco
#define YDist 113  //Tamanho Y de um bloco

@interface MyScene : SKScene

@property(nonatomic) int stage;

@property (nonatomic) NSTimeInterval lastUpdateTimeInterval;

@property SKSpriteNode *background;

@property NSMutableArray *gridX;
@property NSMutableArray *imageGridX;
@property int winLight;
@property int winGrid;


-(id)initWithSize:(CGSize)size withStage:(int)stageNumber;

-(void)generateStage:(int) stageNumber;

@end
