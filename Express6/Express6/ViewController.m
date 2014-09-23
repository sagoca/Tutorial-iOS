//
//  ViewController.m
//  Express6
//
//  Created by Santiago Gonzalez Causse on 23/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *patataFrita = @"Me gustan las patatas";
    
    NSLog(@"El iPhone blanco es caca!");
    
    [NSString stringWithFormat:@"me minas la moral"];
    
    for (int i=0; i<10; i++) {
        NSLog(@"%i",i);
    }
    
    NSArray *arrayChorra = [NSArray arrayWithObjects:@"uno",@"dos",@"tres",@"cuatro", nil];
    NSLog(@"%@", [arrayChorra objectAtIndex:4]);
    
    [self metodoAbsurdo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) metodoAbsurdo{
    int suma = 3+4;
}

@end
