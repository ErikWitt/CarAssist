//
//  WarningLightTest.h
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 Gruppe 4. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "WarningLight.h"

@interface WarningLightTest : SenTestCase

@property (nonatomic) WarningLight* warningLight;
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* info;
@property (nonatomic) UIImage* image;

@end
