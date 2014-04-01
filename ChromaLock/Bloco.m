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
            _image = nil;
            break;
        case 1:
            _up = TRUE;
            _down = TRUE;
            _right = FALSE;
            _left = FALSE;
            _image = [UIImage imageNamed:@"Vertical.png"];
            break;
        case 2:
            _up = FALSE;
            _down = FALSE;
            _right = TRUE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Horizontal.png"];
            break;

        case 3:
            _up = TRUE;
            _down = FALSE;
            _right = TRUE;
            _left = FALSE;
            _image = [UIImage imageNamed:@"Cima:Dir.png"];
            break;

        case 4:
            _up = FALSE;
            _down = TRUE;
            _right = TRUE;
            _left = FALSE;
            _image = [UIImage imageNamed:@"Baixo:Dir.png"];
            break;

        case 5:
            _up = FALSE;
            _down = TRUE;
            _right = FALSE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Baixo:Esq.png"];
            break;

        case 6:
            _up = TRUE;
            _down = FALSE;
            _right = FALSE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Cima:Esq.png"];
            break;
        case 7:
            _up = FALSE;
            _down = TRUE;
            _right = TRUE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Hor:Baixo.png"];
            break;
        case 8:
            _up = TRUE;
            _down = FALSE;
            _right = TRUE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Hor:Cima.png"];
            break;
        case 9:
            _up = TRUE;
            _down = TRUE;
            _right = FALSE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"Vert:Esq.png"];
            break;
        case 10:
            _up = TRUE;
            _down = TRUE;
            _right = TRUE;
            _left = FALSE;
            _image = [UIImage imageNamed:@"Vert:Dir.png"];
            break;
        case 11:
            _up = TRUE;
            _down = TRUE;
            _right = TRUE;
            _left = TRUE;
            _image = [UIImage imageNamed:@"ALL.png"];
            break;
        default:
            NSLog(@"Numero inválido usado para inicializar bloco");
    }
    
    self.typeIdentifier = index;
    self.on = 0;
    self.LightHierarchy = 0;
    return self;
}



@end
