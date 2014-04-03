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
        self.background.xScale = SCALE;
        self.background.yScale = SCALE;
        [self addChild:self.background];
        
        self.gridX = [[NSMutableArray alloc] init];
        self.imageGridX = [[NSMutableArray alloc] init];
        
        //
        [self generateStage:self.stage];
        
        
        
        
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                
                Bloco *x = [[self.gridX objectAtIndex:i] objectAtIndex:j];
                
                if(x.typeIdentifier != 0){
                    SKAction *action = [SKAction animateWithTextures:x.imageFrames timePerFrame:0];
                    [x.image runAction:[SKAction repeatAction:action count:1]];
                    
                    x.BlockX = i;
                    x.BlockY = j;
                    
                    [x.image setSize:CGSizeMake(XDist * SCALE, YDist * SCALE)];
                    
                    [x.image setPosition:CGPointMake(X0+((i-1)*(SCALE * XDist)+((i-1)*2)), Y0+((3-j)*(SCALE * YDist)+((3-j)*2)))];
                    
                    [self addChild:x.image];
                    
                }
                
                
            }
        }
        //
        
        Bloco *teste = [[self.gridX objectAtIndex:0] objectAtIndex:0];
        
        
        [self startSpread];
        for(int i = 0; i < 4; i++)
            for(int j = 0; j < 4; j++){
                teste = [[self.gridX objectAtIndex:j] objectAtIndex:i];
                NSLog(@"X&Y nele: %d %d/n Ligado? %d", teste.BlockX, teste.BlockY, teste.on);
                
            }
        
        [self checkWin];
        [self showLights];
        
        self.rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightSwipeRecognized:)];
        [self.rightSwipe setDirection:UISwipeGestureRecognizerDirectionRight];
        
        self.leftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipeRecognized:)];
        [self.leftSwipe setDirection:UISwipeGestureRecognizerDirectionLeft];
        
        self.upSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(upSwipeRecognized:)];
        [self.upSwipe setDirection:UISwipeGestureRecognizerDirectionUp];
        
        self.downSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(downSwipeRecognized:)];
        [self.downSwipe setDirection:UISwipeGestureRecognizerDirectionDown];
        
        SKAction *action = [SKAction animateWithTextures:[NSArray arrayWithObjects:[self.winFrames objectAtIndex:0], nil] timePerFrame:0];
        [self.winBlock runAction:[SKAction repeatAction:action count:1]];
    }
    
    return self;
}

- (void)rightSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer{
    int i, j;
    Bloco *vazio = nil;
    NSLog(@"Right");
    for(i = 0; i < 4; i++){
        for(j = 0; j < 4; j++){
            if([[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
                vazio = [[self.gridX objectAtIndex:i]objectAtIndex:j];
                break;
            }
        }
        
        if(j < 4 && [[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
            break;
        }
    }
    
    if(i == 0 || vazio == nil)
        return;
    
    Bloco *block = [[self.gridX objectAtIndex:i-1]objectAtIndex:j];
    
    vazio.image.position = block.image.position;
    
    SKAction *moveRight = [SKAction moveToX:X0+((i-1)*(SCALE * XDist)+((i-1)*2)) duration:0.25];
    [block.image runAction:moveRight];
    
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j withObject:block];
    [[self.gridX objectAtIndex:i-1]replaceObjectAtIndex:j withObject:vazio];
    
    block.BlockX += 1;
    vazio.BlockX -= 1;
    
    [self startSpread];
    [self showLights];
    [self checkWin];
}

- (void)leftSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer{
    int i, j;
    Bloco *vazio = nil;
    NSLog(@"Left");
    for(i = 0; i < 4; i++){
        for(j = 0; j < 4; j++){
            if([[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
                vazio = [[self.gridX objectAtIndex:i]objectAtIndex:j];
                break;
            }
        }
        
        if(j < 4 && [[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
            break;
        }
    }
    
    if(i == 3 || vazio == nil)
        return;
    
    Bloco *block = [[self.gridX objectAtIndex:i+1]objectAtIndex:j];
    
    vazio.image.position = block.image.position;
    
    SKAction *moveLeft = [SKAction moveToX:X0+((i-1)*(SCALE * XDist)+((i-1)*2)) duration:0.25];
    [block.image runAction:moveLeft];
    
    
    block.BlockX -= 1;
    vazio.BlockX += 1;
    
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j withObject:block];
    [[self.gridX objectAtIndex:i+1]replaceObjectAtIndex:j withObject:vazio];
    
    [self startSpread];
    [self showLights];
    [self checkWin];
}

- (void)upSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer{
    int i, j;
    Bloco *vazio = nil;
    NSLog(@"Up");
    for(i = 0; i < 4; i++){
        for(j = 0; j < 4; j++){
            if([[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
                vazio = [[self.gridX objectAtIndex:i]objectAtIndex:j];
                break;
            }
        }
        
        if(j < 4 && [[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
            break;
        }
    }
    
    if(j == 3 || vazio == nil)
        return;
    
    Bloco *block = [[self.gridX objectAtIndex:i]objectAtIndex:j+1];
    
    vazio.image.position = block.image.position;
    
    SKAction *moveUp = [SKAction moveToY:Y0+((3-j)*(SCALE * YDist)+((3-j)*2)) duration:0.25];
    [block.image runAction:moveUp];
    
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j withObject:block];
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j+1 withObject:vazio];
    
    block.BlockY -= 1;
    vazio.BlockY += 1;
    
    [self startSpread];
    [self showLights];
    [self checkWin];
}

- (void)downSwipeRecognized:(UISwipeGestureRecognizer *)swipeRecognizer{
    int i, j;
    Bloco *vazio = nil;
    NSLog(@"Down");
    for(i = 0; i < 4; i++){
        for(j = 0; j < 4; j++){
            if([[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
                vazio = [[self.gridX objectAtIndex:i]objectAtIndex:j];
                break;
            }
        }
        
        if(j < 4 && [[[self.gridX objectAtIndex:i]objectAtIndex:j] typeIdentifier] == 0){
            break;
        }
    }
    
    if(j == 0 || vazio == nil)
        return;
    
    Bloco *block = [[self.gridX objectAtIndex:i]objectAtIndex:j-1];
    
    vazio.image.position = block.image.position;
    
    SKAction *moveDown = [SKAction moveToY:Y0+((3-j)*(SCALE * YDist)+((3-j)*2)) duration:0.25];
    [block.image runAction:moveDown];
    
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j withObject:block];
    [[self.gridX objectAtIndex:i]replaceObjectAtIndex:j-1 withObject:vazio];
    
    block.BlockY += 1;
    vazio.BlockY -= 1;
    
    [self startSpread];
    [self showLights];
    [self checkWin];
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
    
    
    if(startBlue >= 0){
        SKSpriteNode* blueBegin = [SKSpriteNode spriteNodeWithImageNamed:@"Start On.png"];
        
        [blueBegin setSize:CGSizeMake(XDist * SCALE, YDist * SCALE)];
        
        [blueBegin setPosition:CGPointMake((138), Y0+((3- startBlue)*(SCALE * YDist)+((3-startBlue)*2)))];
        
        [self addChild:blueBegin];
    }
    if(startRed >= 0){
        SKSpriteNode* redBegin = [SKSpriteNode spriteNodeWithImageNamed:@"Start On Red.png"];
        
        [redBegin setSize:CGSizeMake(XDist * SCALE, YDist * SCALE)];
        
        [redBegin setPosition:CGPointMake((138), Y0+((3- startRed)*(SCALE * YDist)+((3-startRed)*2)))];
        
        [self addChild:redBegin];
    }
    
    self.winFrames = [self loadSpriteSheetFromImageWithName:@"EndSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
    self.winBlock = [SKSpriteNode spriteNodeWithImageNamed:@"EndSprite.png"];
    //SKAction *action = [SKAction animateWithTextures:self.winFrames timePerFrame:0];
    //[self.winBlock runAction:[SKAction repeatActionForever:action]];
    
    [self.winBlock setSize:CGSizeMake(XDist * SCALE, YDist * SCALE)];
    
    [self.winBlock setPosition:CGPointMake((648), Y0+((3- self.winGrid)*(SCALE * YDist)+((3-self.winGrid)*2)))];
    
    [self addChild:self.winBlock];
    
}

//Lógica do jogo

-(void)checkWin{
    Bloco *temp = [[self.gridX objectAtIndex:3] objectAtIndex:self.winGrid];
    if(temp.right == TRUE)
        NSLog(@"grid has exit at right");
    if (temp.on == self.winLight){
        
        
        
        SKAction* action = [SKAction animateWithTextures:[NSArray arrayWithObjects:[self.winFrames objectAtIndex:0], [self.winFrames objectAtIndex:self.winLight], nil] timePerFrame:0];
        [self.winBlock runAction:[SKAction repeatAction:action count:1]];
        
        NSLog(@"GG WP");
    }
}



-(void)startSpread{
    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++){
            
            Bloco *x = [[self.gridX objectAtIndex:i] objectAtIndex:j];
            x.on = 0;
            x.LightHierarchy = 0;
        }
    
    
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
}



-(void) showLights{
    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++){
            
            Bloco *x = [[self.gridX objectAtIndex:i] objectAtIndex:j];
            
            if(x.typeIdentifier != 0){
                
                SKAction* action = [SKAction animateWithTextures:[NSArray arrayWithObjects:[x.imageFrames objectAtIndex:0], [x.imageFrames objectAtIndex:x.on], nil] timePerFrame:0];
                [x.image runAction:[SKAction repeatAction:action count:1]];
                
            }
    
            
        }
    
}

// Adicionado especificamente para o sprite final

-(NSMutableArray*)loadSpriteSheetFromImageWithName:(NSString*)name withNumberOfSprites:(int)numSprites withNumberOfRows:(int)numRows withNumberOfSpritesPerRow:(int)numSpritesPerRow {
    
    NSMutableArray* animationSheet = [NSMutableArray array];
    
    SKTexture* mainTexture = [SKTexture textureWithImageNamed:name];
    
    for(int j = numRows-1; j >= 0; j--) {
        for(int i = 0; i < numSpritesPerRow; i++) {
            SKTexture* part = [SKTexture textureWithRect:CGRectMake(i*(1.0f/numSpritesPerRow), j*(1.0f/numRows), 1.0f/numSpritesPerRow, 1.0f/numRows) inTexture:mainTexture];
            
            [animationSheet addObject:part];
            
            if(animationSheet.count == numSprites)
                break;
        }
        
        if(animationSheet.count == numSprites)
            break;
    }
    
    return animationSheet;
}

-(void)updateWithTimeSinceLastUpdate:(CFTimeInterval)timeSinceLastUpdate{
    
}

@end