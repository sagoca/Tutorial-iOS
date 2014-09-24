//
//  ViewController.h
//  Episodio11
//
//  Created by Santiago Gonzalez Causse on 24/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
- (IBAction)pulsarBotonCamara:(id)sender;
- (IBAction)pulsarBotonSalvar:(id)sender;


@end

