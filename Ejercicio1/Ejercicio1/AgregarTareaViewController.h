//
//  AgregarTareaViewController.h
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 2/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AgregarTareaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textNombre;
@property (weak, nonatomic) IBOutlet UITextField *textLugar;
@property (weak, nonatomic) IBOutlet UITextField *textDescripcion;

@property (nonatomic, retain) ViewController *padre;

- (IBAction)pulsarBotonAceptar:(id)sender;
- (IBAction)pulsarBotonCancelar:(id)sender;

@end
