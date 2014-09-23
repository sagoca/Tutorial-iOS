//
//  ViewController.m
//  Episodio10
//
//  Created by Santiago Gonzalez Causse on 23/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end


@implementation ViewController

@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mapView.delegate = self;
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBoton:(id)sender {
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

-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    MKPinAnnotationView *pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"curr"];
    
    pinView.animatesDrop = YES; //La anotación aparece cayendo.
    pinView.pinColor = MKPinAnnotationColorGreen; //cambia el color de la anotación
    pinView.canShowCallout = YES; //muestra la información de la anotación
    
    UIImageView *imagenSup = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imagen.png"]]; //crea imagen
    [imagenSup setFrame:CGRectMake(0, 0, 30, 30)]; //cambia el tamaño de la imagen para que quepa en la anotación
    pinView.leftCalloutAccessoryView = imagenSup; //añade imagen a la anotación
    
    UIButton *botonPin = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [botonPin addTarget:self action:@selector(pulsarBoton1:) forControlEvents:UIControlEventTouchUpInside];
    pinView.rightCalloutAccessoryView = botonPin;
    
    return pinView;
}

-(IBAction)pulsarBoton1:(id)sender{
    NSLog(@"Botón del PIN pulsado");
}
@end
