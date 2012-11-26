//
//  StepScrollViewController.m
//  CarAssist
//
//  Created by 0thuerin on 25.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "StepScrollViewController.h"
#import "StepModel.h"
#import "StepModelGenerator.h"
#import "StepView.h"

@interface StepScrollViewController ()

@end

@implementation StepScrollViewController

@synthesize scrollView;

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

    StepModel *step;

    StepModelGenerator *generate = [[StepModelGenerator alloc]init];
    step = generate.generate;
    int steps = 0;

    while (step != nil)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * steps;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;

        StepView *subView = [[StepView alloc] initWithFrame:frame];
        
        subView.titleLabel.text = step.title;
        subView.descriptionLabel.text = step.desc;
        subView.descriptionLabel.numberOfLines = 5;
        
        
        [self.scrollView addSubview:subView];
        
        step = step.descendant;
        steps++;
    }

    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * steps, self.scrollView.frame.size.height - 40);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
