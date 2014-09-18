//
//  ViewController.m
//  Episodio7
//
//  Created by Santiago Gonzalez Causse on 18/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"
#import "DetalleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cambiarVista:(id)sender {
    DetalleViewController *detalle = [self.storyboard instantiateViewControllerWithIdentifier:@"DetalleViewController"];
    [self.navigationController pushViewController:detalle animated:YES];
}
@end
