//
//  WarningLightStockService.m
//  CarAssist
//
//  Created by 0witt on 25.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "WarningLight.h"
#import "WarningLightStockService.h"

@implementation WarningLightStockService

-(WarningLightStockService*) init
{
    self = [super init];
    if (self)
    {
        [self initWarningLights];
    }
    
    return self;
}

-(void) initWarningLights
{
    NSMutableArray* warningLights = [NSMutableArray array];
    
    UIImage* image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"warnleuchte" ofType:@"png"]];
    WarningLight* warningLight = [[WarningLight alloc] initWithName:@"Warnleuchte" Info:@"Eine Information" AndImage:image];
    [warningLights addObject:warningLight];
    
    image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"feststellbremsenleuchte" ofType:@"png"]];
    warningLight = [[WarningLight alloc] initWithName:@"Andere Warnleuchte" Info:@"Eine andere Information" AndImage:image];
    [warningLights addObject:warningLight];
    
    image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"bremsanlage" ofType:@"png"]];
    warningLight = [[WarningLight alloc] initWithName:@"Bremsanlage Warnleuchte" Info:@"Eine noch andere Information" AndImage:image];
    [warningLights addObject:warningLight];
    
    image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"parkbremse" ofType:@"png"]];
    warningLight = [[WarningLight alloc] initWithName:@"Parkbremse Warnleuchte" Info:@"Eine noch andere Information" AndImage:image];
    [warningLights addObject:warningLight];
    
    self.warningLights = warningLights;
    
}

@end
