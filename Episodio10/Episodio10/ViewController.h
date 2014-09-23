//
//  ViewController.h
//  Episodio10
//
//  Created by Santiago Gonzalez Causse on 23/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)pulsarBoton:(id)sender;


@end

