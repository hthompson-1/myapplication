//
//  DetailViewController.m
//  myfirstapplication
//
//  Created by Hyrum on 10/9/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import "DetailViewController.h"
#import "Contact.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.contactNameTextField.text = [self.detailItem contactName];
        self.phoneNumberTextField.text = [self.detailItem phoneNumber];
        self.companyNameTextField.text = [self.detailItem companyName];
    }
}

- (void)configureMap {
    CLLocationCoordinate2D SaintLouis = CLLocationCoordinate2DMake(38.63, -90.2);
    CLLocationCoordinate2D NewYork = CLLocationCoordinate2DMake(40.71, -74.01);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([self.detailItem mapArea], 10000, 10000);
    [_mapView setRegion:region];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    [self configureMap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
