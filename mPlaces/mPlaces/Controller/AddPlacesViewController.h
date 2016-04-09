//
//  AddPlacesViewController.h
//  mPlaces
//
//  Created by Anik on 3/31/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCSStarRatingView.h"
#include <MapKit/MapKit.h>

@interface AddPlacesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *placeNameTextField;
@property (weak, nonatomic) IBOutlet UITextView *placeDescriptionTextView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet HCSStarRatingView *rateView;
@property (weak, nonatomic) IBOutlet UITextView *commentView;

@end
