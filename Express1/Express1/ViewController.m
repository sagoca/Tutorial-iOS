//
//  ViewController.m
//  Express1
//
//  Created by Santiago Gonzalez Causse on 16/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Crea string vacío
    NSString *ejemplo1 = @"";
    NSString *ejemplo2 = [[NSString alloc] init];
    
    //Crea String con formato
    NSString *ejemplo3 = @"Hola";
    NSString *ejemplo4 = [NSString stringWithFormat:@"Esta es mi cadena de ejemplo %i %@",3, ejemplo3];
    
    //Llamar a métodos en un objeto -> escribir nombre de objeto y espacio
    BOOL *igual = [ejemplo3 isEqualToString:@"Holas"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
