//
//  WarningLightTest.m
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 Gruppe 4. All rights reserved.
//

#import "WarningLightTest.h"

@implementation WarningLightTest

- (void)setUp
{
    [super setUp];
    
    self.name = @"TestWarningLight";
    self.info = @"Test Text";
    self.image = [[UIImage alloc] init];
    
    self.warningLight = [[WarningLight alloc]initWithName:self.name Info:self.info AndImage:self.image];
}

- (void) testGetterOfProperties
{
    STAssertEquals(self.name, self.warningLight.name, @"Getter for property name has failed.");
    STAssertEquals(self.info, self.warningLight.info, @"Getter for property description has failed.");
    STAssertEquals(self.image, self.warningLight.image, @"Getter for property image has failed.");
}

@end
