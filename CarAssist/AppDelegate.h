//
//  AppDelegate.h
//  CarAssist
//
//  Created by Erik Witt on 26.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "HomescreenViewController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HomescreenViewController *homescreenViewController;

@end
