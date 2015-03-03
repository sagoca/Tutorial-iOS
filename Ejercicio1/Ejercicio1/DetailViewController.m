//
//  DetailViewController.m
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 30/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize labelLugar, labelNombre, textDescripcion, padre, numTarea;

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)marcarCompleta:(id)sender {
    NSDictionary *dic = [padre.tareas objectAtIndex:numTarea];
    [padre.tareas removeObjectAtIndex:numTarea];
    [padre.tareasRealizadas addObject:dic];
    [padre.tableView reloadData];
}
@end
