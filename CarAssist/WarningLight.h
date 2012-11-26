//
//  WarningLight.h
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 Gruppe 4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarningLight : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* info;
@property (nonatomic) UIImage* image;

- (WarningLight*) initWithName: (NSString*) name Info: (NSString*) info AndImage: (UIImage*) image;

@end
