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
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //moveNumber

            break;
            
        case 2:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //moveNumber
            
            break;
            
        case 3:
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
            
        case 4:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //moveNumber
            
            break;
            
        case 5:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 6:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //moveNumber
            
            break;
            
        case 7:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 8:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 9:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 10:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:6]]; //moveNumber
            
            break;
            
            
        case 11:
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
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
        case 12:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 13:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 14:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            
            break;
            
        case 15:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 16:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            
            break;
            
        case 17:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:6]]; //moveNumber
            
            break;
            
        case 18:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
        case 19:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            
            break;
            
        case 20:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:-1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            
            break;
            
            
        case 21:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //moveNumber
            break;
            
        case 22:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
            
        case 23:
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
            
        case 24:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            break;
            
        case 25:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
        case 26:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
        case 27:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
        case 28:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:8]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:11]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:0]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:4]]; //moveNumber
            break;
            
        case 29:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:1]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:5]]; //moveNumber
            break;
            
        case 30:
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X4Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]];//X4Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:7]];//X4Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:1]]; //X4Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X3Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:0]]; //X3Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:4]]; //X3Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:5]]; //X3Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:6]]; //X2Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:3]]; //X2Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X2Y1
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y4
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:2]]; //X1Y3
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:9]]; //X1Y2
            [_stageConfig  addObject:[[Bloco alloc] initWithNumber:10]]; //X1Y1
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //endGrid
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //endColor
            [_stageConfig  addObject:[NSNumber numberWithInt:3]]; //startRed
            [_stageConfig  addObject:[NSNumber numberWithInt:2]]; //startBlue
            [_stageConfig  addObject:[NSNumber numberWithInt:10]]; //moveNumber
            break;

    }
    
    
    return self.stageConfig;
}

@end
