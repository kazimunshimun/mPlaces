//
//  ViewController.h
//  mPlaces
//
//  Created by Anik on 3/11/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <MapKit/MapKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *listMapSegmentedControl;
@property (weak, nonatomic) IBOutlet UITableView *placesTableView;
@property (weak, nonatomic) IBOutlet MKMapView *placesMapView;

@end

