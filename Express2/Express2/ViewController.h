//
//  ViewController.h
//  Express2
//
//  Created by Santiago Gonzalez Causse on 17/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Método que no devulve nada ni recibe nada por parámetros
- (void) metodo1;
//Método que devuelve un entero
- (int) metodo2;
//Método que devuelve un objeto string
- (NSString *) metodo3;
//Método que no devuelve nada y recibe un string por parámetros
- (void) metodo4: (NSString *) prop1;
//Método que devuelve un NSNumber a partir de un int
-(NSNumber *) metodo5:(int) entero1;
//Método con varios parámetros de entrada
-(void) crearRectangulo: (int) lado conAltura: (int) altura;
@end
