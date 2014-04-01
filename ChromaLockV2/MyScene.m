//
//  MyScene.m
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 28/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "MyScene.h"
#import "Bloco.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size withStage:(int)stageNumber {
    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.stage = stageNumber;
        
        self.background = [SKSpriteNode spriteNodeWithImageNamed:@"BackgroundB.png"];
        self.background.ZPosition = -15;
        self.background.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:self.background];
        
        self.gridX = [[NSMutableArray alloc] init];
        self.imageGridX = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 4; i++){
            [self.gridX addObject: [[NSMutableArray alloc] init]];
            for(int j = 0; j < 4; j++){
                int random = arc4random() % 10 + 1;
                Bloco *x;
                
                if(i == 2
                   && j == 3)
                    x = [[Bloco alloc]initWithNumber:0];
                
                else{
                    x = [[Bloco alloc]initWithNumber:random];
                    SKAction *action = [SKAction animateWithTextures:x.imageFrames timePerFrame:0];
                    [x.image runAction:[SKAction repeatActionForever:action]];
                }
                
                x.BlockX = i;
                x.BlockY = j;
                
                [x.image setSize:CGSizeMake(XDist, YDist)];
                
                [x.image setPosition:CGPointMake(X0+((i-1)*XDist+((i-1)*2)), Y0+((j-1)*YDist+((j-1)*2)))];
                
                [self addChild:x.image];
                [[self.gridX objectAtIndex:i] insertObject:x atIndex:j];
            }
        }
    }

    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

//Stage
-(void)generateStage{
    
    
    
    
}

-(void)spreadLight:(Bloco*) target{
    target.on = TRUE;
    
    if(target.up == TRUE && target.BlockY > 0){
        Bloco *up = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY - 1];
        if(up.down == TRUE && up.on == FALSE)
            [self spreadLight:up];
    }
    
    if(target.down == TRUE && target.BlockY < 3){
        Bloco *down = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY + 1];
        if(down.up == TRUE && down.on == FALSE)
            [self spreadLight:down];
    }
    if(target.right == TRUE && target.BlockX < 3){
        Bloco *right = [[self.gridX objectAtIndex:target.BlockX + 1] objectAtIndex:target.BlockY];
        if(right.left == TRUE && right.on == FALSE)
            [self spreadLight:right];
    }
    if(target.left == TRUE && target.BlockX > 0){
        Bloco *left = [[self.gridX objectAtIndex:target.BlockX - 1] objectAtIndex:target.BlockY];
        if(left.right == TRUE && left.on == FALSE)
            [self spreadLight:left];
    }
    
#warning implement winning condidtion -- Quando tiver final, nomear o grid necessário, checa abertura pra direita, e confere se venceu o jogo!
    
}


// É impossivel extrair uma informação de um array de arrays, porque no próprio código ele se considera ID. Por isso, este metodo cria um bloco temporário a partir do ID para devolver a imagem desejada.
-(UIImage*)getImageFromArray:(int) arrayX:(int) arrayY{
    
    Bloco *temp = [[self.gridX objectAtIndex:arrayX] objectAtIndex:arrayY];
    UIImage *image = temp.image;
    NSLog(@"temp identifier: %d", temp.typeIdentifier);
    return image;
}

-(void)updateWithTimeSinceLastUpdate:(CFTimeInterval)timeSinceLastUpdate{
    
}

@end