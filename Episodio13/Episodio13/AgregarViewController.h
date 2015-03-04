//
//  AgregarViewController.h
//  Episodio13
//
//  Created by Santiago Gonzalez Causse on 4/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgregarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombre;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDescripcion;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPuntos;
- (IBAction)pulsarBotonInsertar:(id)sender;

@end
