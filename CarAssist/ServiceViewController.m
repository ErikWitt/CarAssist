//
//  ServiceViewController.m
//  CarAssist
//
//  Created by 0thuerin on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "ServiceViewController.h"
#import "StepScrollViewController.h"

@interface ServiceViewController ()

@end

@implementation ServiceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction) testClick:(id)sender
{
    StepScrollViewController* viewController = [[StepScrollViewController alloc] initWithNibName:@"StepScrollViewController" bundle: nil];
    
    [self.navigationController pushViewController:viewController animated: YES];
}

@end
