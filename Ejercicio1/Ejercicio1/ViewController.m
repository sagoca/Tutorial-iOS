//
//  ViewController.m
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 30/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"
#import "CeldaTareaTableViewCell.h"
#import "DetailViewController.h"
#import "AgregarTareaViewController.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize tableView, tareas, tareasRealizadas, nuevaTarea;

- (void)viewDidLoad {
    [super viewDidLoad];
    tareas = [[NSMutableArray alloc]init];
    tareasRealizadas = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"irANuevaTarea"]){
        AgregarTareaViewController *aVC= segue.destinationViewController;
        aVC.padre = self;
    }
    
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section==0) {
        return [tareas count];
    }else{
        return [tareasRealizadas count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic;
    if(indexPath.section==0){
        dic = [tareas objectAtIndex:indexPath.row];
    }else{
        dic = [tareasRealizadas objectAtIndex:indexPath.row];
    }
    CeldaTareaTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"CeldaTarea"];
    [cell.labelNombre setText:[dic objectForKey:@"nombre"]];
    [cell.labelLugar setText:[dic objectForKey:@"lugar"]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailVC"];
    NSDictionary *dic;
    if(indexPath.section==0){
        dic = [tareas objectAtIndex:indexPath.row];
    }else{
        dic = [tareasRealizadas objectAtIndex:indexPath.row];
    }

    [self.navigationController pushViewController:detailVC animated:YES];
    detailVC.labelNombre.text = [dic objectForKey:@"nombre"];
    detailVC.labelLugar.text = [dic objectForKey:@"lugar"];
    detailVC.textDescripcion.text = [dic objectForKey:@"descripcion"];
    detailVC.padre = self;
    detailVC.numTarea = indexPath.row;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *vistaHeader = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 23.0)];
    vistaHeader.backgroundColor = [UIColor blackColor];
    UILabel *labelTitulo = [[UILabel alloc] initWithFrame:CGRectZero];
    labelTitulo.backgroundColor = [UIColor clearColor];
    labelTitulo.opaque = NO;
    labelTitulo.textColor = [UIColor whiteColor];
    labelTitulo.frame = CGRectMake(20.0, 0.0, 280.0, 23.0);
    if(section==0){
        labelTitulo.text = @"Tareas pendientes";
    }else{
        labelTitulo.text = @"Tareas completadas";
    }
    
    [vistaHeader addSubview:labelTitulo];
    
    return vistaHeader;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        if(indexPath.section==0){
            [tareas removeObjectAtIndex:indexPath.row];
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }else{
            [tareasRealizadas removeObjectAtIndex:indexPath.row];
            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }
    }
}

@end
