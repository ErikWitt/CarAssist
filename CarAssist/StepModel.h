//
//  StepModel.h
//  CarAssist
//
//  Created by 0thuerin on 24.11.12.
//  Copyright (c) 2012 Gruppe 4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepModel : NSObject

@property int ident;
@property NSString* title;
@property NSString* desc;
@property StepModel* predecessor;
@property StepModel* descendant;


@end
