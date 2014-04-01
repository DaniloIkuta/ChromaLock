//
//  Peca.m
//  ChromaLock
//
//  Created by Danilo Makoto Ikuta on 25/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "Bloco.h"

@implementation Bloco : NSObject 

-(id)initWithNumber:(int)index{
    self = [super init];
                            //Switch case dos inits com numero.
    switch(index){
        case 0:
            _up = FALSE;
            _down = FALSE;
            _right = FALSE;
            _left = FALSE;
            _image = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(133, 113)];
            break;
            
        case 1:
            _up = TRUE;
            _down = TRUE;
            _right = FALSE;
            _left = FALSE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"VerticalSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"VerticalSprite.png"];
            break;
            
        case 2:
            _up = FALSE;
            _down = FALSE;
            _right = TRUE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"HorizontalSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"HorizontalSprite.png"];
            break;

        case 3:
            _up = TRUE;
            _down = FALSE;
            _right = TRUE;
            _left = FALSE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"CimaDirSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"CimaDirSprite.png"];
            break;

        case 4:
            _up = FALSE;
            _down = TRUE;
            _right = TRUE;
            _left = FALSE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"BaixoDirSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"BaixoDirSprite.png"];
            break;

        case 5:
            _up = FALSE;
            _down = TRUE;
            _right = FALSE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"BaixoEsqSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"BaixoEsqSprite.png"];
            break;

        case 6:
            _up = TRUE;
            _down = FALSE;
            _right = FALSE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"CimaEsqSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"CimaEsqSprite.png"];
            break;
            
        case 7:
            _up = FALSE;
            _down = TRUE;
            _right = TRUE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"HorBaixoSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"HorBaixoSprite.png"];
            break;
            
        case 8:
            _up = TRUE;
            _down = FALSE;
            _right = TRUE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"HorCimaSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"HorCimaSprite.png"];
            break;
            
        case 9:
            _up = TRUE;
            _down = TRUE;
            _right = FALSE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"VertEsqSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"VertEsqSprite.png"];
            break;
            
        case 10:
            _up = TRUE;
            _down = TRUE;
            _right = TRUE;
            _left = FALSE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"VertDirSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"VertDirSprite.png"];
            break;
            
        case 11:
            _up = TRUE;
            _down = TRUE;
            _right = TRUE;
            _left = TRUE;
            _imageFrames = [self loadSpriteSheetFromImageWithName:@"ALLSprite.png" withNumberOfSprites:4 withNumberOfRows:2 withNumberOfSpritesPerRow:2];
            _image = [SKSpriteNode spriteNodeWithImageNamed:@"ALLSprite.png"];
            break;
            
        default:
            NSLog(@"Numero inválido usado para inicializar bloco");
    }
    
    self.typeIdentifier = index;
    self.on = FALSE;
    return self;
}

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

@end
