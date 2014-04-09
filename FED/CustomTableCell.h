//
//  CustomTableCell.h
//  fitFinal
//
//  Created by kittinun chobtham on 12/14/2556 BE.
//  Copyright (c) 2556 kittinun chobtham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
@property (nonatomic,weak) IBOutlet UIButton *MinusBtn;
@property (nonatomic,weak) IBOutlet UIButton *addBtn;
//@property (nonatomic,weak) IBOutlet UILabel *CoutingLabel;

@property (nonatomic,weak) IBOutlet UILabel *FooadName;
@property(nonatomic,weak) IBOutlet UILabel *CountingLabel;
- (IBAction)Addcount:(id)sender;
- (IBAction)MinusCount:(id)sender;

@end
