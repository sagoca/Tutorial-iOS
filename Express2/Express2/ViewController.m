//
//  ViewController.m
//  Express2
//
//  Created by Santiago Gonzalez Causse on 17/09/14.
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
    //Llamada a método 4
    [self   metodo4:@"Hola"];
    //Llamada a método crearRectangulo
    [self crearRectangulo:3 conAltura:5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) metodo1{
    //código para el metodo1
}

- (int) metodo2{
    //código para metodo2
    return 4;
}
- (NSString *) metodo3{
    NSString *devolver = [[NSString alloc] init];
    return devolver;
}
- (void) metodo4: (NSString *) prop1{
    //código
}
-(NSNumber *) metodo5:(int) entero1{
    NSNumber *numero = [NSNumber numberWithInt:entero1];
    return numero;
}
-(void) crearRectangulo: (int) lado conAltura: (int) altura{
    
}
@end
