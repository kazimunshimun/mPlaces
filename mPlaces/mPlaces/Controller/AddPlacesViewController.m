//
//  AddPlacesViewController.m
//  mPlaces
//
//  Created by Anik on 3/31/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import "AddPlacesViewController.h"

@interface AddPlacesViewController ()

@end

@implementation AddPlacesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Add places";
    [self.doneButton setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont fontWithName:@"TrebuchetMS" size:16.0], NSFontAttributeName,
                                        [UIColor whiteColor], NSForegroundColorAttributeName,
                                        nil] 
                              forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeButtonTouched:(id)sender {
    NSLog(@"close button touched");
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtonTouched:(id)sender {
    NSLog(@"done button touched");
    NSString *name, *description, *comment;
 //   float latitude, longitude;
    int rate;
    
    name = self.placeNameTextField.text;
    description = self.placeDescriptionTextView.text;
    comment = self.commentView.text;
    
    rate = (int)self.rateView.value;
    
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
