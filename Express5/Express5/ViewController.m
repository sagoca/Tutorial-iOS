//
//  ViewController.m
//  Express5
//
//  Created by Santiago Gonzalez Causse on 19/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize vistaRoja;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Para que funcione hay que desactivar el auto layout de la vista en la pestaña file inspector
    
    //[self.vistaRoja setFrame:CGRectMake(self.vistaRoja.frame.origin.x, self.vistaRoja.frame.origin.y, 100, 300)]; //esto es para cambiar el tamaño pero mantener la posición
    [UIView animateWithDuration:1.0 animations:^{
        [self.vistaRoja setFrame:CGRectMake(200, 80, self.vistaRoja.frame.size.width, self.vistaRoja.frame.size.height)];
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
