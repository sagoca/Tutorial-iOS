//
//  JugadoresViewController.m
//  Episodio6
//
//  Created by Santiago Gonzalez Causse on 18/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "JugadoresViewController.h"

@interface JugadoresViewController ()

@end

@implementation JugadoresViewController
@synthesize labelNombre, imagenJugador;

//Hay que crearse estos objetos y modificarlos en el viewController.m aquí se reciben y se asignan a los elementos de la vista en el viewDidLoad.
//Solución encontrada en el foro de manzanamagica
@synthesize labelString, imagen1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    labelNombre.text= [NSString stringWithFormat:@"%@",labelString];
    [imagenJugador setImage:imagen1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
