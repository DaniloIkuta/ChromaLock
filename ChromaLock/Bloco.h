//
//  Peca.h
//  ChromaLock
//
//  Created by Danilo Makoto Ikuta on 25/03/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Bloco : NSObject

@property BOOL up;
@property BOOL down;
@property BOOL right;
@property BOOL left;
@property int on; //1 = blue, 2 = red, 3 = purple
@property int BlockX;
@property int BlockY;
@property int typeIdentifier;
@property UIImage *image;
@property int LightHierarchy;


-(id)initWithNumber:(int)index;


@end
