//
//  DetailViewController.h
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 30/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelNombre;
@property (weak, nonatomic) IBOutlet UILabel *labelLugar;
@property (weak, nonatomic) IBOutlet UITextView *textDescripcion;

@property (nonatomic, retain) ViewController *padre;
@property int numTarea;


- (IBAction)marcarCompleta:(id)sender;

@end
