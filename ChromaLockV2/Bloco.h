//
//  Peca.h
//  ChromaLock
//
//  Created by Danilo Makoto Ikuta on 25/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface Bloco : NSObject

@property BOOL up;
@property BOOL down;
@property BOOL right;
@property BOOL left;
@property BOOL on;
@property int BlockX;
@property int BlockY;
@property int typeIdentifier;
@property SKSpriteNode *image;
@property NSArray *imageFrames;
@property int LightHierarchy;


-(id)initWithNumber:(int)index;


@end
