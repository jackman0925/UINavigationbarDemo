//
//  ViewController.m
//  UINavigationbarDemo
//
//  Created by Jackman on 5/4/13.
//  Copyright (c) 2013 Jackman. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"My Navbar Title";
    
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Left"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(myAction)];
    //[self.navigationItem setLeftBarButtonItem:leftButton];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    
    UIBarButtonItem *rightEdit = [[UIBarButtonItem alloc]
                                     initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                     target:self
                                     action:@selector(myAction)];
    
    
    UIBarButtonItem *rightDone = [[UIBarButtonItem alloc]
                                     initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                     target:self
                                     action:@selector(myAction)];
    NSArray *rightBtns = @[rightDone,rightEdit];
    
    self.navigationItem.rightBarButtonItems = rightBtns;
}

- (void)myAction
{
    NSLog(@"nav button press");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDetail:(id)sender {

    DetailViewController *subD = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    [self.navigationController pushViewController:subD animated:YES];
}
@end
