//
//  ViewController.m
//  Express4
//
//  Created by Santiago Gonzalez Causse on 18/09/14.
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
    
    int i = 0;
    if (i<10) {
        NSLog(@"i es menor que 10");
    } else {
        NSLog(@"i es mayor que 10");
    }
    
    for (i=0; i<10; i++) {
        NSLog(@"%i",i);
    }
    
    do {
        NSLog(@"%i",i);
        i++;
    } while (i<11);
    
    while (i<15) {
        NSLog(@"%i",i);
        i++;
    }
    switch (i) {
        case 1:
            NSLog(@"Tiene valor 1");
            break;
        case 2:
            NSLog(@"Tiene valor 2");
            break;
        case 15:
            NSLog(@"Tiene valor 15");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
