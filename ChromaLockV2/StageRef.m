//
//  StageRef.m
//  ChromaLock
//
//  Created by Gabriel Nopper on 01/04/14.
//  Copyright (c) 2014 Danilo Makoto Ikuta. All rights reserved.
//

#import "StageRef.h"
#import "Bloco.h"

@implementation StageRef

-(NSMutableArray*) getSettings:(int) stageNumber{
    self.stageConfig = [[NSMutableArray alloc] init];
    
    switch(stageNumber){
            
        case 1:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //moveNumber

            break;
        case 2:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            break;
            
        case 3:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
    }
    
    
    return self.stageConfig;
}

@end
