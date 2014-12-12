//
//  Contact.h
//  myfirstapplication
//
//  Created by Hyrum on 12/4/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Contact : NSObject

@property (strong, nonatomic) NSString *contactName;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *companyName;
@property (nonatomic) CLLocationCoordinate2D mapArea;

@end
