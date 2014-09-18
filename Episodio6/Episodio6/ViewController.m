//
//  ViewController.m
//  Episodio6
//
//  Created by Santiago Gonzalez Causse on 17/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"
#import "CeldaJugadores.h"
#import "JugadoresViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    jugadores = [[NSMutableArray alloc] init];
    
    NSDictionary *oliver = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"oliver.jpg",@"Oliver Aton",@"Real Madrid", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    NSDictionary *benji = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"benji.jpg",@"Benji Price",@"FC Barcelona", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    NSDictionary *mark = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"marklenders.jpg",@"Mark Lenders",@"Arsenal", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    NSDictionary *bruce = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"bruceharper.jpg",@"Bruce Harper",@"Recreativo de Huelva", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    NSDictionary *derrick = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"gemelosderrick.jpg",@"Gemelos Derrick",@"Alcorcon", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    NSDictionary *julian = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"julianross.jpg",@"Julian Ross",@"At. de Madrid", nil] forKeys:[NSArray arrayWithObjects:@"imagen",@"nombre",@"equipo", nil]];
    
    [jugadores addObject:oliver];
    [jugadores addObject:benji];
    [jugadores addObject:mark];
    [jugadores addObject:bruce];
    [jugadores addObject:derrick];
    [jugadores addObject:julian];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [jugadores count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CeldaJugadores *cell = [tableView dequeueReusableCellWithIdentifier:@"CeldaJugador"]; //El identificador debe ser el mismo que se puso en la celda del storyboard
    
    NSDictionary *jugador = [jugadores objectAtIndex:indexPath.row];
    
    //configure the cell...
    cell.nombreJugador.text = [jugador objectForKey:@"nombre"];
    cell.equipoJugador.text = [jugador objectForKey:@"equipo"];
    cell.imagenJugador.image = [UIImage imageNamed: [jugador objectForKey:@"imagen"]];

    return cell;
}

//Controla qué haces cuando seleccionas una fila
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *jugador = [jugadores objectAtIndex:indexPath.row];
    JugadoresViewController *jugadoresVC = [self.storyboard instantiateViewControllerWithIdentifier:@"JugadoresViewController"];
    [self.navigationController pushViewController:jugadoresVC animated:YES];
    //jugadoresVC.labelNombre.text=[jugador objectForKey:@"nombre"];
    //jugadoresVC.imagenJugador.image = [UIImage imageNamed:[jugador objectForKey:@"imagen"]];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

@end
