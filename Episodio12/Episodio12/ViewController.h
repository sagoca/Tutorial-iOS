//
//  ViewController.h
//  Episodio12
//
//  Created by Santiago Gonzalez Causse on 3/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
- (IBAction)pulsarBotonCargarImagen:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


@end

