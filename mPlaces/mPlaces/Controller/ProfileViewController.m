//
//  ProfileViewController.m
//  mPlaces
//
//  Created by Anik on 3/31/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  //  self.title = @"Profile";
    self.navigationItem.prompt = @"Profile";
    [self titleViewForNavigationBar];
    [self rightBarButtonForProfile];
  //  self.navigationItem.titleView.backgroundColor = [UIColor yellowColor];
    
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

#pragma mark - navigation bar item
-(void) titleViewForNavigationBar{
    
    UIImage *profileImage = [UIImage imageNamed:@"profile"];
    //   self.navigationItem.titleView = [[UIImageView alloc] initWithImage:profileImage];
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 190, 44)];
    UIImageView *profileImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 2, 40, 40)];
    profileImageView.image = profileImage;
    profileImageView.tintColor = [UIColor whiteColor];
    [titleView addSubview:profileImageView];
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(48, 0, 142, 44)];
    nameLabel.text = @"Realy long Profile";
    UIFont *font = [UIFont fontWithName:@"TrebuchetMS" size:14.0];
    nameLabel.font = font;
    nameLabel.textColor = [UIColor whiteColor];
    nameLabel.numberOfLines = 0;
    [titleView addSubview:nameLabel];
//    titleView.backgroundColor = [UIColor redColor];
    
    self.navigationItem.titleView = titleView;
}

-(void) rightBarButtonForProfile{
    UIImage *settingsImage = [UIImage imageNamed:@"settings"];
    UIBarButtonItem *profileSettings = [[UIBarButtonItem alloc] initWithImage:settingsImage style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = profileSettings;
}

#pragma mark - button touched action
- (IBAction)friendsButtonTouched:(id)sender {
    NSLog(@"friends button touched");
    
    [self.friendsButton setTitleColor:[UIColor colorWithRed:46.0/255 green:196.0/255 blue:123.0/255 alpha:1.0] forState:UIControlStateNormal];
    [self.placesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}
- (IBAction)placesButtonTouched:(id)sender {
    NSLog(@"places button touched");
    [self.friendsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.placesButton setTitleColor:[UIColor colorWithRed:46.0/255 green:196.0/255 blue:123.0/255 alpha:1.0] forState:UIControlStateNormal];
}

@end
