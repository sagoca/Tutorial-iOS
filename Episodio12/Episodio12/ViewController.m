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
@synthesize imagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBotonCargarImagen:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.newstatesman.com/sites/default/files/images/2014%2B36_Friends_Cast_Poker%281%29.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    [self.imagen setImage:[UIImage imageWithData:data]];
    
}
@end
