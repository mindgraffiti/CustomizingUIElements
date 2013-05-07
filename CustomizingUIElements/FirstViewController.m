//
//  FirstViewController.m
//  CustomizingUIElements
//
//  Created by Thuy Copeland on 5/6/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"NinjaIcon"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.navigationItem setTitleView:imageView];
    
    // here's how you make a barButton
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Honk!" style:UIBarButtonItemStyleBordered target:self action:@selector(onTap)];
    // now let's actually put it on the navBar
    self.navigationItem.rightBarButtonItem = button;

}

- (void)onTap{
    NSLog(@"Hello ninja.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
