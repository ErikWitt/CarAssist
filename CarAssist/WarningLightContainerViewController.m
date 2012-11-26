//
//  WarningLightContainerViewController.m
//  CarAssist
//
//  Created by 0witt on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "WarningLightContainerViewController.h"
#import "WarningLight.h"
#import "WarningLightViewController.h"
#import "WarningLightCollectionViewCell.h"

@interface WarningLightContainerViewController () <UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation WarningLightContainerViewController

- (WarningLightContainerViewController*)init
{
    self = [super init];
    if (self)
    {
        self.warningLightStockService = [[WarningLightStockService alloc] init];
        
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.warningLightCollectionView registerClass:WarningLightCollectionViewCell.class forCellWithReuseIdentifier:@"WarningLightCollectionViewCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.warningLightStockService.warningLights.count;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"standard"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"standard"];
    }
    
    cell.textLabel.text = currentWarningLight.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    WarningLightViewController* viewController = [[WarningLightViewController alloc] initWithWarningLight: currentWarningLight];
    
    [self.navigationController pushViewController:viewController animated:YES];
}



- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.warningLightStockService.warningLights.count;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    
    WarningLightCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WarningLightCollectionViewCell" forIndexPath:indexPath];
    
    [cell setWarningLightImage: currentWarningLight.image];
    
    return cell;
}

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLight* currentWarningLight = [self.warningLightStockService.warningLights objectAtIndex:indexPath.row];
    WarningLightViewController* viewController = [[WarningLightViewController alloc] initWithWarningLight: currentWarningLight];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
