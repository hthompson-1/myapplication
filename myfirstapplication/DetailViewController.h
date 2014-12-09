//
//  DetailViewController.h
//  myfirstapplication
//
//  Created by Hyrum on 10/9/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UITextField *contactNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (strong, nonatomic) IBOutlet UITextField *companyNameTextField;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;


@end

