//
//  ViewController.m
//  Episodio12
//
//  Created by Santiago Gonzalez Causse on 3/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imagen, activityIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBotonCargarImagen:(id)sender {
    NSOperationQueue *queue = [NSOperationQueue new];
    NSInvocationOperation *operacion = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(downloadImage) object:nil];
    [activityIndicator startAnimating];
    [queue addOperation:operacion];
    
}

- (void) downloadImage{
    NSURL *url = [NSURL URLWithString:@"http://www.newstatesman.com/sites/default/files/images/2014%2B36_Friends_Cast_Poker%281%29.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *img = [UIImage imageWithData:data];
    [self.imagen performSelectorOnMainThread:@selector(setImage:) withObject:img waitUntilDone:YES];
    [activityIndicator stopAnimating];
}
@end
