//
//  WarningLightViewController.h
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WarningLight.h"

@interface WarningLightViewController : UIViewController

@property (nonatomic) WarningLight* warningLight;

@property (nonatomic) IBOutlet UITextView* warningLightInfoTextField;
@property (nonatomic) IBOutlet UIImageView* warningLightImageView;

- (WarningLightViewController*) initWithWarningLight: (WarningLight*) warningLight;

@end
