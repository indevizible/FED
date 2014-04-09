//
//  Dic Controller.m
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//


#import "Dic Controller.h"
#import "ViewController.h"
#import "AppDelegate.h"
#import "CustomTableCell.h"
@interface Dic_Controller ()

@end

@implementation Dic_Controller
{
    NSMutableArray *allObject;
    NSMutableArray *displayObject;
    
    NSDictionary *dict;
    
    NSString *nameFood;
    NSString *counting;
}
@synthesize searchBar;
@synthesize cal;
@synthesize ProgressBmr;
@synthesize foodTable;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)searchBarShouldReturn:(UISearchBar *)search
{
    [searchBar resignFirstResponder];
    return TRUE;
}

    /*

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView
{
    [searchBar resignFirstResponder];
}
 
     */
- (void)viewDidLoad
{
    
    
    self.searchBar.delegate = self;
    self.foodTable.delegate = self;
    self.foodTable.dataSource = self;
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:nil];
    [self.navigationItem setLeftBarButtonItems:@[btn1] animated:YES];
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(100, 0, 150, 44)];
    // [self.searchBar.];
    [self.navigationController.navigationBar addSubview:self.searchBar];
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
   // NSLog(@"protocol1 == %@", delegate.transfer1 )   ;
   // cal.text =  [NSString stringWithFormat:@"%@",delegate.transfer1 ] ;
    
    if (delegate._checkString == FALSE) {
        cal.text = [NSString stringWithFormat:@"0"];
    }
    else
    {
        cal.text = [NSString stringWithFormat:@"%@",delegate.transfer1];
    }
    
    
    nameFood = @"NameFood";
    counting = @"counting";
    
    allObject = [[NSMutableArray alloc] init];
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"กุ้งอบวุ้นเส้น 1 จาน 300 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"กล้วยน้ำว้า 1 ผล 60 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"กาแฟเย็น 1 แก้ว 115 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"ข้าวผัดกระเพราหมู 1 จาน 580 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"ข้าวผัดคะน้าหมูกรอบ 1 จาน 670 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"ข้าวหมูแดง 1 จาน 560 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"คอหมูย่าง 1 จาน 200 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];

    
    
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"ผัดไทย 1 จาน 800 Kcal",nameFood,
            @"0",counting,
            nil];
    [allObject addObject:dict];
    
    
    dict =[NSDictionary dictionaryWithObjectsAndKeys:delegate.StringAddFood,delegate.StringAddNameFood, nil];
    [allObject addObject:dict];
    
    
    
    
    UITapGestureRecognizer *oneTapGesture = [[UITapGestureRecognizer alloc]
                                             initWithTarget: self
                                             action: @selector(hideKeyboard:)];
    [oneTapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:oneTapGesture];
    
    //Trendybear Edit
    
}

- (void)hideKeyboard: (UITapGestureRecognizer *)sender {
    [searchBar resignFirstResponder] ;
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
    
}


-(BOOL)disablesAutomaticKeyboardDismissal
{
    
    return NO;
}
    
    
    
    //[super viewDidLoad];
	// Do any additional setup after loading the view.




-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return allObject.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"CustomTableCell";
    
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTable" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    NSDictionary *tmpDict = [allObject objectAtIndex:indexPath.row];
    cell.FooadName.text = [tmpDict objectForKey:nameFood];
    cell.CountingLabel.text = [ tmpDict objectForKey:counting];
    return cell;
}




































@end