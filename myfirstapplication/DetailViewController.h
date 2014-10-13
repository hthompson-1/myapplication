//
//  DetailViewController.h
//  myfirstapplication
//
//  Created by Hyrum on 10/9/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

