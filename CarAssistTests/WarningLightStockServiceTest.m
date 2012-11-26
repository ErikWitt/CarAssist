//
//  WarningLightStockServiceTest.m
//  CarAssist
//
//  Created by 0witt on 25.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "WarningLightStockServiceTest.h"

@implementation WarningLightStockServiceTest

- (void)setUp
{
    [super setUp];
    
    self.warningLightStockService = [[WarningLightStockService alloc] init];
}


- (void)testConstructor
{
    STAssertNotNil(self.warningLightStockService, @"Der Warninglight Stockservice ist nicht richtig initialisiert!");
}

@end
