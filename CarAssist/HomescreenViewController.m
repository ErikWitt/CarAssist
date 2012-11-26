//
//  HomescreenViewController.m
//  CarAssist
//
//  Created by 0haak on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "HomescreenViewController.h"
#import "ProfilController.h"
#import "ServiceViewController.h"
#import "WarningLight.h"
#import "WarningLightContainerViewController.h"

@interface HomescreenViewController ()

@end

@implementation HomescreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)serviceButtonpressed:(id)sender
{
    ServiceViewController* controller = [[ServiceViewController alloc] initWithNibName:@"ServiceViewController" bundle: nil];
    [self.navigationController pushViewController:controller animated:YES];
    
}

-(IBAction)stoerungButtonpressed:(id)sender
{
    WarningLightContainerViewController* viewController = [[WarningLightContainerViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

-(IBAction)bedienungButtonpressed:(id)sender
{
    //Von der Jeweiligen Gruppe zu implementieren
}

-(IBAction)tippsButtonpressed:(id)sender
{
    //Von der Jeweiligen Gruppe zu implementieren
}
-(IBAction)profilButtonpressed:(id)sender
{
    ProfilController* controller = [[ProfilController alloc] initWithNibName:@"ProfilController" bundle: nil];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
