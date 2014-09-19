//
//  JugadoresViewController.h
//  Episodio6
//
//  Created by Santiago Gonzalez Causse on 18/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JugadoresViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagenJugador;
@property (weak, nonatomic) IBOutlet UILabel *labelNombre;
@property (nonatomic, retain) NSString *labelString;
@property (nonatomic, retain) UIImage *imagen1;

@end
