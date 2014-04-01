//
//  StageRef.h
//  ChromaLock
//
//  Created by Gabriel Nopper on 01/04/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bloco.h"

@interface StageRef : NSObject

@property NSMutableArray* stageConfig;

-(NSMutableArray*) getSettings:(int) stageNumber;

@end
