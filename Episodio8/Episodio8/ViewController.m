//
//  ViewController.m
//  Episodio8
//
//  Created by Santiago Gonzalez Causse on 19/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"
#import "VistaNuevaViewController.h"

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"segueVistaRoja"]) {
        NSLog(@"Está pasando");
        VistaNuevaViewController *vc = [segue destinationViewController];
        [vc.view setBackgroundColor:[UIColor blueColor]];
    }
}

@end
