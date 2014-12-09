//
//  MapViewController.m
//  myfirstapplication
//
//  Created by Hyrum on 10/16/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CLLocationCoordinate2D SaintLouis = CLLocationCoordinate2DMake(38.63, -90.2);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(SaintLouis, 10000, 10000);
    [_mapView setRegion:region];
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(38.04, -84.5);
    MKPointAnnotation *awesome = [[MKPointAnnotation alloc] init];
    awesome.coordinate = coordinate;
    [self.mapView addAnnotation:awesome];
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
