//
//  MapViewController.m
//  myfirstapplication
//
//  Created by Hyrum on 10/16/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import "MapViewController.h"
#import "MasterViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)setMapRegion:(id)newMapRegion {
    if (_mapRegion != newMapRegion) {
        _mapRegion = newMapRegion;
        
        // Update the view.
        [self configureMap];
    }
}

- (void)configureMap {
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance ([self.mapRegion ], 10000, 10000);
    [_mapView setRegion:region];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureMap];
    
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(38.04, -84.5);
//    MKPointAnnotation *awesome = [[MKPointAnnotation alloc] init];
//    awesome.coordinate = coordinate;
//    [self.mapView addAnnotation:awesome];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
