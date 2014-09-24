//
//  ViewController.m
//  Express7
//
//  Created by Santiago Gonzalez Causse on 24/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarAlertView:(id)sender {
    
    UIAlertView *alerta = [[UIAlertView alloc] init];
    [alerta setTitle:@"Confirma"];
    [alerta setDelegate:self];
    [alerta setMessage:@"¿Estamos viendo el AlertView?"];
    [alerta addButtonWithTitle:@"Si"];
    [alerta addButtonWithTitle:@"No"];
    [alerta show];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        NSLog(@"Hemos pulsado el si");
    }else if(buttonIndex==1){
        NSLog(@"Hemos pulsado el no");
    }
}
@end
