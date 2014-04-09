//
//  Add Food.h
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Add_Food : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *txtaddnamefood;

@property (strong, nonatomic) IBOutlet UITextField *txtaddefood;

@property (strong, nonatomic) IBOutlet UIButton *addfoodb;

-(IBAction)SendData:(id)sender;
@end
