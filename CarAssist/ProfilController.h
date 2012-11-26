//
//  ProfilController.h
//  CarAssist
//
//  Created by 0haak on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfilController : UIViewController
-(IBAction) editButtonpressed:(id)sender;
-(IBAction) returnButton:(UITextField*)sender;
@property IBOutlet UITextField *vorname, *nachname,*autoModel, *autoRadio, *emailAdresse,*lieblingsKEKSEEE;

@end
