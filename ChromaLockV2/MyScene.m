//
//  MyScene.m
//  ChromaLockV2
//
//  Created by Danilo Makoto Ikuta on 28/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "MyScene.h"
#import "Bloco.h"
#import "StageRef.h"

@implementation MyScene{
    int startBlue;
    int startRed;
}

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
        
        Bloco *teste = [[self.gridX objectAtIndex:0] objectAtIndex:0];
        
        
        [self startSpread];
        for(int i = 0; i < 4; i++)
            for(int j = 0; j < 4; j++){
                teste = [[self.gridX objectAtIndex:j] objectAtIndex:i];
                NSLog(@"X&Y nele: %d %d/n Ligado? %d", teste.BlockX, teste.BlockY, teste.on);
                
            }
        
        [self checkWin];
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
-(void)generateStage:(int) stageNumber{
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    StageRef *stageRef = [[StageRef alloc] init];
    temp = [stageRef getSettings: stageNumber];
    startBlue = [[temp lastObject] intValue];
    [temp removeLastObject];
    startRed = [[temp lastObject] intValue];
    [temp removeLastObject];
    self.winLight = [[temp lastObject] intValue];
    [temp removeLastObject];
    self.winGrid = [[temp lastObject] intValue];
    [temp removeLastObject];
    
    Bloco *tempBlock;
    for(int i = 0; i < 4; i++){
        [self.gridX addObject: [[NSMutableArray alloc] init]];
        for(int j = 0; j < 4; j++){
            tempBlock = [temp lastObject];
            tempBlock.BlockX = i;
            tempBlock.BlockY = j;
            [[self.gridX objectAtIndex:i] addObject:tempBlock];
            [temp removeLastObject];
        }
    }
}

//Lógica do jogo
-(void)startSpread{
    Bloco *temp;
    if(startBlue >= 0){
        temp = [[self.gridX objectAtIndex:0] objectAtIndex:startBlue];
        [self spreadBlueLight:temp givenHierarchy:1];
    }
    if(startRed >= 0){
        temp = [[self.gridX objectAtIndex:0] objectAtIndex:startRed];
        [self spreadRedLight:temp givenHierarchy:1];
    }
    temp = nil;
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

-(void)checkWin{
    Bloco *temp = [[self.gridX objectAtIndex:3] objectAtIndex:self.winGrid];
    if(temp.right == TRUE)
        NSLog(@"grid has exit at right");
    if (temp.on == self.winLight){
        NSLog(@"GG WP");
    }
}

-(void)spreadBlueLight:(Bloco*) target givenHierarchy:(int) hierarchy{
    
    //1 - Pre-light config. Unused on blue.
    // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    
    //2-Setting on:
    
    target.LightHierarchy = hierarchy + 1;
    target.on = 1;
    
    //3 - Spreading forth:
    
    if(target.up == TRUE && target.BlockY > 0){
        Bloco *up = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY - 1];
        if(up.down == TRUE && up.on <= 0)
            if(up.LightHierarchy >= target.LightHierarchy || up.LightHierarchy == 0)
                [self spreadBlueLight:up givenHierarchy:target.LightHierarchy];
    }
    
    if(target.down == TRUE && target.BlockY < 3){
        Bloco *down = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY + 1];
        if(down.up == TRUE && down.on <= 0)
            if(down.LightHierarchy >= target.LightHierarchy || down.LightHierarchy == 0)
                [self spreadBlueLight:down givenHierarchy:target.LightHierarchy];
    }
    if(target.right == TRUE && target.BlockX < 3){
        Bloco *right = [[self.gridX objectAtIndex:target.BlockX + 1] objectAtIndex:target.BlockY];
        if(right.left == TRUE && right.on <= 0)
            if(right.LightHierarchy >= target.LightHierarchy || right.LightHierarchy == 0)
                [self spreadBlueLight:right givenHierarchy:target.LightHierarchy];
    }
    if(target.left == TRUE && target.BlockX > 0){
        Bloco *left = [[self.gridX objectAtIndex:target.BlockX - 1] objectAtIndex:target.BlockY];
        if(left.right == TRUE && left.on <= 0)
            if(left.LightHierarchy >= target.LightHierarchy || left.LightHierarchy == 0)
                [self spreadBlueLight:left givenHierarchy:target.LightHierarchy];
    }
    
#warning implement winning condidtion -- Quando tiver final, nomear o grid necessário, checa abertura pra direita, e confere se venceu o jogo!
    
}



-(void)spreadRedLight:(Bloco*) target givenHierarchy:(int)hierarchy{
    
    //1 - Pre-light config:
    
    if(target.on == 1){                     //Checa se é azul
        if (target.typeIdentifier >= 7){    //Caso seja de entrada 3/4, mistura NELE, e iguala hierarquia
            int trueHierarchy = target.LightHierarchy - 1;
            if(hierarchy > target.LightHierarchy)
                trueHierarchy = hierarchy;
            //True hierarchy defined -- go on
            [self spreadPurpleLight:target givenHierarchy:trueHierarchy];
            //Nothing to do here --
            return;
        }
        else{ //If not, há tres casos. Primeiro:
            // Caso a hierarquia seja menor, a luz do bloco está mais próxima da fonte azul que da vermelha. Ignora.
            if(target.LightHierarchy < hierarchy + 1)
                return;
            // Caso sejam iguais, funde NAQUELE apenas, já sabemos que não é entrada tripla, portanto trata-se não recursivamente:
            if(target.LightHierarchy == hierarchy + 1){
                target.on = 3;
                return;
            }
            // Caso a hierarquia seja maior, o caso que resta, procede-se com a recursão comum:
        }
        
    }
    
    
    //2-Setting on:
    
    target.LightHierarchy = hierarchy + 1;
    target.on = 2;
    
    //3 - Spreading forth:
    
    
    if(target.up == TRUE && target.BlockY > 0){
        Bloco *up = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY - 1];
        if(up.down == TRUE && up.on <= 1)
            if(up.LightHierarchy >= target.LightHierarchy || up.LightHierarchy == 0)
                [self spreadRedLight:up givenHierarchy:target.LightHierarchy];
    }
    
    if(target.down == TRUE && target.BlockY < 3){
        Bloco *down = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY + 1];
        if(down.up == TRUE && down.on <= 1)
            if(down.LightHierarchy >= target.LightHierarchy || down.LightHierarchy == 0)
                [self spreadRedLight:down givenHierarchy:target.LightHierarchy];
    }
    if(target.right == TRUE && target.BlockX < 3){
        Bloco *right = [[self.gridX objectAtIndex:target.BlockX + 1] objectAtIndex:target.BlockY];
        if(right.left == TRUE && right.on <= 1)
            if(right.LightHierarchy >= target.LightHierarchy || right.LightHierarchy == 0)
                [self spreadRedLight:right givenHierarchy:target.LightHierarchy];
    }
    if(target.left == TRUE && target.BlockX > 0){
        Bloco *left = [[self.gridX objectAtIndex:target.BlockX - 1] objectAtIndex:target.BlockY];
        if(left.right == TRUE && left.on <= 1)
            if(left.LightHierarchy >= target.LightHierarchy || left.LightHierarchy == 0)
                [self spreadRedLight:left givenHierarchy:target.LightHierarchy];
    }
    
#warning same as blue.
    
}




-(void)spreadPurpleLight:(Bloco*) target givenHierarchy:(int)hierarchy{
    
    //No initial config required -- Straight to light
    
    //2-Setting on:
    
    target.LightHierarchy = hierarchy + 1;
    target.on = 3;
    
    //3 - Spreading forth:
    
    if(target.up == TRUE && target.BlockY > 0){
        Bloco *up = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY - 1];
        if(up.down == TRUE && up.on != 3)
            if(up.LightHierarchy >= target.LightHierarchy || up.LightHierarchy == 0)
                [self spreadPurpleLight:up givenHierarchy:target.LightHierarchy];
    }
    
    if(target.down == TRUE && target.BlockY < 3){
        Bloco *down = [[self.gridX objectAtIndex:target.BlockX] objectAtIndex:target.BlockY + 1];
        if(down.up == TRUE && down.on != 3)
            if(down.LightHierarchy >= target.LightHierarchy || down.LightHierarchy == 0)
                [self spreadPurpleLight:down givenHierarchy:target.LightHierarchy];
    }
    if(target.right == TRUE && target.BlockX < 3){
        Bloco *right = [[self.gridX objectAtIndex:target.BlockX + 1] objectAtIndex:target.BlockY];
        if(right.left == TRUE && right.on != 3)
            if(right.LightHierarchy >= target.LightHierarchy || right.LightHierarchy == 0)
                [self spreadPurpleLight:right givenHierarchy:target.LightHierarchy];
    }
    if(target.left == TRUE && target.BlockX > 0){
        Bloco *left = [[self.gridX objectAtIndex:target.BlockX - 1] objectAtIndex:target.BlockY];
        if(left.right == TRUE && left.on != 3)
            if(left.LightHierarchy >= target.LightHierarchy || left.LightHierarchy == 0)
                [self spreadPurpleLight:left givenHierarchy:target.LightHierarchy];
    }
    
#warning same as blue&red.
    
}

-(void)updateWithTimeSinceLastUpdate:(CFTimeInterval)timeSinceLastUpdate{
    
}

@end