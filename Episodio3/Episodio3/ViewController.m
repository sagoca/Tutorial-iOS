//
//  ViewController.m
//  Episodio3
//
//  Created by Santiago Gonzalez Causse on 16/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize campoTexto, boton, etiqueta; //Para no tener que declarar getters y setters

@synthesize segundaEtiqueta;

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

- (IBAction)pulsarBoton:(id)sender{
    [etiqueta setText:campoTexto.text];
    [segundaEtiqueta setText:campoTexto.text];
}

@end
