//
//  ViewController.m
//  Episodio9
//
//  Created by Santiago Gonzalez Causse on 19/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MKCoordinateRegion region; //Región en la que se va a centrar el mapa
    MKCoordinateSpan span; //Altitud
    span.latitudeDelta=0.2;
    span.longitudeDelta=0.2;
    CLLocationCoordinate2D location;
    location.latitude=37.3859505;
    location.longitude=-6.0764275;
    region.span = span;
    region.center = location;
    [mapView setRegion:region animated:YES];
    [mapView regionThatFits:region];
    
    CLLocationCoordinate2D coordPunto = CLLocationCoordinate2DMake(region.center.latitude, region.center.longitude);
    MKPointAnnotation *anotacion = [[MKPointAnnotation alloc] init];
    [anotacion setCoordinate:coordPunto];
    [anotacion setTitle:@"Mi casa"];
    [anotacion setSubtitle:@"c/ Pio XII"];
    [self.mapView addAnnotation:anotacion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pulsarBotonTipoMapa:(id)sender{
    UIBarButtonItem *boton = (UIBarButtonItem *) sender;
    switch (boton.tag) {
        case 1:
            [mapView setMapType:MKMapTypeSatellite];
            break;
        case 2:
            [mapView setMapType:MKMapTypeStandard];
            break;
        case 3:
            [mapView setMapType:MKMapTypeHybrid];
            break;
        default:
            break;
    }
}

@end
