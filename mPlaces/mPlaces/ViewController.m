//
//  ViewController.m
//  mPlaces
//
//  Created by Anik on 3/11/16.
//  Copyright © 2016 Anik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setSegmentedControlFont];
    
    self.placesTableView.backgroundView = [self emptyViewForTableView];
    self.placesTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
 //   [self.view addSubview:[self stickHeaderView]];
}

-(UIView*)emptyViewForTableView{
    UIView *emptyView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    
    UIImageView *emptyImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"profile"]];
    emptyImageView.frame = CGRectMake(emptyView.frame.size.width/2 - 11, emptyView.frame.size.height/2 - 66, 22, 22);
    
    UILabel *emptyLabel = [[UILabel alloc] initWithFrame:CGRectMake(emptyImageView.frame.origin.x - 55, emptyImageView.frame.origin.y + 30, 130, 17)];
    emptyLabel.text = @"No places found";
    
    [emptyView addSubview:emptyLabel];
    [emptyView addSubview:emptyImageView];
    
    return emptyView;
}

-(UIView*)stickHeaderView{
    UIView* stickMessageView = [[UIView alloc] init];
    stickMessageView.frame = CGRectMake( 0,
                                        self.navigationController.navigationBar.frame.size.height + [[UIApplication sharedApplication] statusBarFrame].size.height,
                                        self.view.frame.size.width,
                                        30);
    stickMessageView.backgroundColor = [UIColor colorWithRed:0
                                                       green:150.0/255
                                                        blue:136.0/255
                                                       alpha:1.0];
    
    UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(8, 4, stickMessageView.frame.size.width, stickMessageView.frame.size.height - 8)];
    messageLabel.textColor = [UIColor whiteColor];
    messageLabel.font = [UIFont fontWithName:@"TrebuchetMS" size:14.0];
    messageLabel.text = @"Strick message example.";
    
    [stickMessageView addSubview:messageLabel];
    return stickMessageView;
}

-(void)setSegmentedControlFont{
    UIFont *font = [UIFont fontWithName:@"TrebuchetMS" size:14.0];
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    
    [self.listMapSegmentedControl setTitleTextAttributes:attributes forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPlacesTouched:(id)sender {
    NSLog(@"add places touched");
}

- (IBAction)profileTouched:(id)sender {
    NSLog(@"profile touched");
}

- (IBAction)listMapSegmentedControlValueChanged:(id)sender {
    NSLog(@"value changed");
    UISegmentedControl *selectedSegment = (UISegmentedControl*)sender;
    if (selectedSegment.selectedSegmentIndex == 0) {
        self.placesMapView.hidden = YES;
        self.placesTableView.hidden = NO;
    }else{
        self.placesMapView.hidden = NO;
        self.placesTableView.hidden = YES;
    }
}

//#Mark UITableView
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}
@end
