//
//  ViewController.h
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITextFieldDelegate>

{
    NSString *gender;
    NSString *sport;
    double *BMR;
}
-(void)getterBMR;
@property (strong, nonatomic) IBOutlet UISegmentedControl *genderControl;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sportcontrol;
@property (strong, nonatomic) IBOutlet UITextField *ageTxt;
@property (strong, nonatomic) IBOutlet UITextField *weight;
@property (strong, nonatomic) IBOutlet UITextField *Heighttxt;
@property (strong,nonatomic) NSString *tran;
- (IBAction)PassData:(id)sender;
- (IBAction)changeGender:(id)sender;
- (IBAction)changeSport:(id)sender;




@end
