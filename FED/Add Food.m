//
//  Add Food.m
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//



#import "Add Food.h"
#import "Dic Controller.h"
#import "AppDelegate.h"
@interface Add_Food ()

@end

@implementation Add_Food

@synthesize txtaddefood;
@synthesize txtaddnamefood;
@synthesize addfoodb;


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
	txtaddefood.placeholder = @"";
    txtaddnamefood.placeholder = @"";
    
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    delegate.StringAddFood = txtaddefood.text;
    delegate.StringAddNameFood = txtaddnamefood.text;
    
//Trendybear Edit

UITapGestureRecognizer *oneTapGesture = [[UITapGestureRecognizer alloc]
                                         initWithTarget: self
                                         action: @selector(hideKeyboard:)];
[oneTapGesture setNumberOfTouchesRequired:1];
[[self view] addGestureRecognizer:oneTapGesture];
//Trendybear Edit

}

- (void)hideKeyboard: (UITapGestureRecognizer *)sender {
    [txtaddnamefood resignFirstResponder] ;
    [txtaddefood resignFirstResponder] ;
}

//Trendybear Edit


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
