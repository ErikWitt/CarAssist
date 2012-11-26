//
//  WarningLight.m
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 Gruppe 4. All rights reserved.
//

#import "WarningLight.h"

@implementation WarningLight

- (WarningLight*) initWithName: (NSString*) name Info: (NSString*) info AndImage: (UIImage*) image
{
    self = [super init];
    if (self)
    {
        self.name = name;
        self.info = info;
        self.image = image;
    }
    return self;
}

@end
