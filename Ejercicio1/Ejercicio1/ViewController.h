//
//  ViewController.h
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 30/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *tareas;
@property (nonatomic, retain) NSMutableArray *tareasRealizadas;
@property (nonatomic, retain) NSDictionary *nuevaTarea;

@end

