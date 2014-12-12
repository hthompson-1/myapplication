//
//  MasterViewController.m
//  myfirstapplication
//
//  Created by Hyrum on 10/9/14.
//  Copyright (c) 2014 Hyrum. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Contact.h"
#import <MapKit/MapKit.h>

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    Contact *contact1 = [[Contact alloc] init];
    contact1.contactName = @"Captain America";
    contact1.phoneNumber = @"123-456-7890";
    contact1.companyName = @"Shield";
    CLLocationCoordinate2D SaintLouis = CLLocationCoordinate2DMake(38.63, -90.2);
    contact1.mapArea = SaintLouis;
    [self.objects insertObject:contact1 atIndex:0];
    
    Contact *contact2 = [[Contact alloc] init];
    contact2.contactName = @"Batman";
    contact2.phoneNumber = @"0123-456-789";
    contact2.companyName = @"Shield";
    CLLocationCoordinate2D Chicago = CLLocationCoordinate2DMake(41.88, -87.63);
    contact2.mapArea = Chicago;
    [self.objects insertObject:contact2 atIndex:0];
    
    Contact *contact3 = [[Contact alloc] init];
    contact3.contactName = @"Ironman";
    contact3.phoneNumber = @"098-765-4321";
    contact3.companyName = @"Shield";
    CLLocationCoordinate2D NewYork = CLLocationCoordinate2DMake(40.71, -74.01);
    contact3.mapArea = NewYork;
    [self.objects insertObject:contact3 atIndex:0];
    
    Contact *contact4 = [[Contact alloc] init];
    contact4.contactName = @"Hulk";
    contact4.phoneNumber = @"345-678-9012";
    contact4.companyName = @"Shield";
    CLLocationCoordinate2D Lexington = CLLocationCoordinate2DMake(38.05, -84.46);
    contact4.mapArea = Lexington;
    [self.objects insertObject:contact4 atIndex:0];
    
    Contact *contact5 = [[Contact alloc] init];
    contact5.contactName = @"Superman";
    contact5.phoneNumber = @"234-567-8901";
    contact5.companyName = @"Shield";
    CLLocationCoordinate2D Louisville = CLLocationCoordinate2DMake(38.25, -85.76);
    contact5.mapArea = Louisville;
    [self.objects insertObject:contact5 atIndex:0];
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    Contact *sampleContact = [[Contact alloc] init];
    sampleContact.contactName = @"Contact Name";
    [self.objects insertObject:sampleContact atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *object = self.objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Contact *object = self.objects[indexPath.row];
    cell.textLabel.text = [object contactName];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
