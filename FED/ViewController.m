//
//  ViewController.m
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()
@end

@implementation ViewController
{
    int convert ;
}

@synthesize genderControl;
@synthesize sportcontrol;
@synthesize ageTxt;
@synthesize weight;
@synthesize Heighttxt;
@synthesize tran;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [ageTxt resignFirstResponder] ;
    [weight resignFirstResponder];
    [Heighttxt resignFirstResponder];
    return  TRUE;
}




- (void)viewDidLoad
{
    if ( genderControl.selectedSegmentIndex == 0) {
        gender = @"ชาย";
        NSLog(@"%@",gender);
    }
    if (sportcontrol.selectedSegmentIndex == 0) {
        sport = @"น้อย";
        NSLog(@"%@",sport);
    }
    
    ageTxt.delegate = self;
    weight.delegate = self;
    Heighttxt.delegate = self;
    ageTxt.placeholder = @"0";
    weight.placeholder = @"0";
    Heighttxt.placeholder = @"0";
    // ageTxt.text = @"0";
    //  weight.text = @"0";
    //Heighttxt.text = @"0";
    UITapGestureRecognizer *oneTapGesture = [[UITapGestureRecognizer alloc]
                                             initWithTarget: self
                                             action: @selector(hideKeyboard:)];
    [oneTapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:oneTapGesture];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)getterBMR
{
    
    if ([gender isEqualToString:@"ชาย"]==TRUE) {
        if ([sport isEqualToString:@"น้อย"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (66 + (13.7 *C1)+ (5 * C2) - (6.8 * C3)) *1.2 ;
        tran = [NSString stringWithFormat:@"%d",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
    }
    }
    if ([gender isEqualToString:@"หญิง"]==TRUE) {
        if ([sport isEqualToString:@"น้อย"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (665 + (9.6 *C1)+ (1.8 * C2) - (4.7 * C3)) *1.2;
        tran = [NSString stringWithFormat:@"%d",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
        }
    }
    
        if ([gender isEqualToString:@"ชาย"]==TRUE) {
            if ([sport isEqualToString:@"ปานกลาง"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (66 + (13.7 *C1)+ (5 * C2) - (6.8 * C3)) *1.55 ;
        tran = [NSString stringWithFormat:@"%d  Cal",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
    }
        }
        if ([gender isEqualToString:@"หญิง"]==TRUE) {
            if ([sport isEqualToString:@"ปานกลาง"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (665 + (9.6 *C1)+ (1.8 * C2) - (4.7 * C3)) *1.55;
        tran = [NSString stringWithFormat:@"%d",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
    }
        }
        if ([gender isEqualToString:@"ชาย"]==TRUE) {
            if ([sport isEqualToString:@"มาก"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (66 + (13.7 *C1)+ (5 * C2) - (6.8 * C3)) *1.9 ;
        tran = [NSString stringWithFormat:@"%d  Cal",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
    }
        }
        if ([gender isEqualToString:@"หญิง"]==TRUE) {
            if ([sport isEqualToString:@"มาก"] == TRUE) {
        int C1 =  [weight.text intValue];
        int C2 =  [Heighttxt.text intValue];
        int C3 =  [ageTxt.text intValue];
        convert = (665 + (9.6 *C1)+ (1.8 * C2) - (4.7 * C3)) *1.9;
        tran = [NSString stringWithFormat:@"%d",convert];
        AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        delegate.transfer1 = tran;
    }
        }
}

-(IBAction)PassData:(id)sender {
    
    if ([gender isEqualToString:@"ชาย"]==TRUE ) {
        if ([sport isEqualToString:@"น้อย"] == TRUE) {
            NSLog(@"Send Data Sucess");
        [self getterBMR];
        }
    }
    if ([gender isEqualToString:@"หญิง"]==TRUE ) {
        if ([sport isEqualToString:@"น้อย"] == TRUE) {
            NSLog(@"Send Data Sucess");
            [self getterBMR];
        }
    }
    if ([gender isEqualToString:@"ชาย"]==TRUE ) {
        if ([sport isEqualToString:@"ปานกลาง"] == TRUE) {
            NSLog(@"Send Data Sucess");
            [self getterBMR];
        }
    }
    if ([gender isEqualToString:@"หญิง"]==TRUE ) {
        if ([sport isEqualToString:@"ปานกลาง"] == TRUE) {
            NSLog(@"Send Data Sucess");
            [self getterBMR];
        }
    }
    if ([gender isEqualToString:@"ชาย"]==TRUE ) {
        if ([sport isEqualToString:@"มาก"] == TRUE) {
            NSLog(@"Send Data Sucess");
            [self getterBMR];
        }
    }
    if ([gender isEqualToString:@"หญิง"]==TRUE ) {
        if ([sport isEqualToString:@"มาก"] == TRUE) {
            NSLog(@"Send Data Sucess");
            [self getterBMR];
        }
    }

}





- (IBAction)changeGender:(id)sender {
    UISegmentedControl *segmented = (UISegmentedControl *)sender;
    switch (segmented.selectedSegmentIndex) {
        case 0:
            gender = @"ชาย";
            NSLog(@"%@",gender);
            
            break;
        case 1:
            gender = @"หญิง";
            NSLog(@"%@",gender);
            
            break;
        default:
            break;
    }
    
}

- (IBAction)changeSport:(id)sender {
    UISegmentedControl *segmented = (UISegmentedControl *)sender;
    AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    switch (segmented.selectedSegmentIndex) {
        case 0:
            sport = @"น้อย";
            delegate._checkString = TRUE;
            NSLog(@"%@",sport);
        
            break;
        case 1:
            sport = @"ปานกลาง";
            delegate._checkString = TRUE;
            NSLog(@"%@",sport);
            
            break;
        case 2:
            sport = @"มาก";
            delegate._checkString = TRUE;
            NSLog(@"%@",sport);
            
            break;
        default: delegate._checkString = FALSE;
            break;
    }
}





    
    
    
//Trendybear Edit


    //Trendybear Edit



- (void)hideKeyboard: (UITapGestureRecognizer *)sender {
    [ageTxt resignFirstResponder] ;
    [weight resignFirstResponder] ;
    [Heighttxt resignFirstResponder] ;
}

//Trendybear Edit


@end

