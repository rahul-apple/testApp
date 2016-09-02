//
//  ViewController.m
//  testApp
//
//  Created by RAHUL'S MAC MINI on 02/09/16.
//  Copyright © 2016 iDev. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.868
                                                            longitude:151.2086
                                                                 zoom:6];
    GMSMapView *mapView = [GMSMapView mapWithFrame:[_mapContainer bounds] camera:camera];
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = camera.target;
    marker.snippet = @"Hello World";
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.map = mapView;
    [self.view addSubview: mapView];
}

/*- (IBAction)zoomToCurrentLocation:(UIBarButtonItem *)sender {
    float spanX = 0.00725;
    float spanY = 0.00725;
    MKCoordinateRegion region;
    region.center.latitude = self.mapView.userLocation.coordinate.latitude;
    region.center.longitude = self.mapView.userLocation.coordinate.longitude;
    region.span.latitudeDelta = spanX;
    region.span.longitudeDelta = spanY;
    [self.mapView setRegion:region animated:YES];
}
-(void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    [self.mapView setCenterCoordinate:userLocation.coordinate animated:YES];
}*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
