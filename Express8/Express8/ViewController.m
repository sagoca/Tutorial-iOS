//
//  ViewController.m
//  Express8
//
//  Created by Santiago Gonzalez Causse on 29/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBotonAV:(id)sender {
    
    UIAlertView *alerta = [[UIAlertView alloc] init];
    [alerta setTitle:[NSString stringWithFormat:@"%@", NSLocalizedString(@"tituloAlertView", @"Título de la AlertView")]];
    [alerta setDelegate:self];
    [alerta setMessage:[NSString stringWithFormat: @"%@", NSLocalizedString(@"mensajeAlertView", @"Este es el mensaje de la AlertView")]];
    [alerta addButtonWithTitle:@"Aceptar"];
    [alerta show];
}
@end
