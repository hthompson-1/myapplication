//
//  MapViewController.h
//  myfirstapplication
//
//  Created by Hyrum on 10/16/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end
