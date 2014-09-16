//
//  ViewController.h
//  Episodio3
//
//  Created by Santiago Gonzalez Causse on 16/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *campoTexto;
@property (nonatomic, retain) IBOutlet UIButton *boton;
@property (nonatomic, retain) IBOutlet UILabel *etiqueta;

- (IBAction)pulsarBoton:(id)sender;

@end
