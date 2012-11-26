//
//  WarningLightContainerViewController.h
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WarningLightStockService.h"

@interface WarningLightContainerViewController : UIViewController

@property (nonatomic) WarningLightStockService* warningLightStockService;
@property (nonatomic) IBOutlet UICollectionView* warningLightCollectionView;

@end
