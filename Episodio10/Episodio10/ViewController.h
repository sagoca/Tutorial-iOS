//
//  ViewController.h
//  Episodio10
//
//  Created by Santiago Gonzalez Causse on 23/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)pulsarBoton:(id)sender;
-(IBAction)pulsarBoton1:(id)sender;

@end

