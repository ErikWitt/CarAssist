//
//  HomescreenViewController.h
//  CarAssist
//
//  Created by 0haak on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WarningLightStockService.h"

@interface HomescreenViewController : UIViewController

-(IBAction) serviceButtonpressed:(id)sender;
-(IBAction) stoerungButtonpressed:(id)sender;
-(IBAction) bedienungButtonpressed:(id)sender;
-(IBAction) tippsButtonpressed:(id)sender;
-(IBAction) profilButtonpressed:(id)sender;

@end
