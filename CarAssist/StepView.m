//
//  StepView.m
//  CarAssist
//
//  Created by 0thuerin on 25.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "StepView.h"

@implementation StepView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"StepView" owner:self options:nil];
        self.mainView.bounds = self.bounds;
        [self addSubview: self.mainView];
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
