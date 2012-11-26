//
//  WarningLightViewController.m
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "WarningLightViewController.h"

@interface WarningLightViewController ()

@end

@implementation WarningLightViewController

- (WarningLightViewController*) initWithWarningLight: (WarningLight*) warningLight
{
    self = [super init];
    if (self) {
        self.warningLight = warningLight;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.warningLight.name;
    self.warningLightInfoTextField.text = self.warningLight.info;
    
    [self.warningLightImageView setImage: self.warningLight.image];
}




@end
