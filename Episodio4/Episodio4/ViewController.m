//
//  ViewController.m
//  Episodio4
//
//  Created by Santiago Gonzalez Causse on 16/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imagen;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cambiarImagen:(id)sender {
    //Se puede trabajar directamente con el sender, pero por seguridad se puede crear el objeto antes
    UIButton *boton = (UIButton *) sender;
    int tag = boton.tag;
    
    NSString *imagenACambiar = @"";
    
    
    switch (tag) {
        case 1:
            imagenACambiar = @"Imagen1.jpg";
            break;
        case 2:
            imagenACambiar = @"Imagen2.jpg";
            break;
        case 3:
            imagenACambiar = @"Imagen3.jpg";
            
        default:
            break;
    }
    
    [imagen setImage:[UIImage imageNamed:imagenACambiar]];

}
@end
