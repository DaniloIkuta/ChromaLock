//
//  MyScene.h
//  ChromaLockV2
//

//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "ViewController.h"


#define X0 342  //Refere-se ao Xo da tela
#define Y0 384  //Refere-se ao Yo da tela
#define larguraTela 1024
#define alturaTela 768
#define XDist 133  //Tamanho X de um bloco
#define YDist 113  //Tamanho Y de um bloco
#define SCALE 0.75


@interface MyScene : SKScene
@property(nonatomic) int stage;

@property (nonatomic) NSTimeInterval lastUpdateTimeInterval;

@property SKSpriteNode *background;

@property NSMutableArray *gridX;
@property NSMutableArray *imageGridX;
@property int winLight;
@property int winGrid;
@property NSArray *winFrames;
@property SKSpriteNode *winBlock;


@property BOOL win;
@property BOOL lose;

@property UISwipeGestureRecognizer *rightSwipe;
@property UISwipeGestureRecognizer *leftSwipe;
@property UISwipeGestureRecognizer *downSwipe;
@property UISwipeGestureRecognizer *upSwipe;

@property ViewController *vc;

-(id)initWithSize:(CGSize)size withStage:(int)stageNumber;

-(void)generateStage:(int) stageNumber;

- (void)rightSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer;
- (void)leftSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer;
- (void)upSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer;
- (void)downSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer;

@end
