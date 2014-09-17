//
//  ViewController.m
//  Express3
//
//  Created by Santiago Gonzalez Causse on 17/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = [NSArray arrayWithObjects:@"primero",@"segundo",@"tercero", nil];
    NSLog(@"%@", array);
    
    NSMutableArray *arraym = [NSMutableArray arrayWithObjects:@"pera",@"manzana", nil];
    NSLog(@"%@",arraym);
    [arraym addObject:@"melon"];
    NSLog(@"%@",arraym);
    
    NSDictionary *diccionario = [NSDictionary dictionaryWithObjects:arraym forKeys:array];
    NSLog(@"%@",diccionario);
    NSLog(@"%@", [diccionario objectForKey:@"segundo"]);
    
    NSMutableDictionary *diccionarioM = [[NSMutableDictionary alloc] init];
    [diccionarioM setValue:@"Mario" forKey:@"rey del mundo"];
    NSLog(@"%@",diccionarioM);
    [diccionarioM setValue:array forKey:@"prueba array"];
    NSLog(@"%@",diccionarioM);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
