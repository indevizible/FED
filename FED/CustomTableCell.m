//
//  CustomTableCell.m
//  fitFinal
//
//  Created by kittinun chobtham on 12/14/2556 BE.
//  Copyright (c) 2556 kittinun chobtham. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell
{
    int count;
}
@synthesize FooadName =_FooadName ;
@synthesize CountingLabel = _CountingLabel;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)Addcount:(id)sender {
    count = [_CountingLabel.text intValue];
    count++;
    NSLog(@"count is == %d",count);
    _CountingLabel.text = [NSString stringWithFormat:@"%d",count];
}

- (IBAction)MinusCount:(id)sender {
    
    count = [_CountingLabel.text intValue];
    count--;
    NSLog(@"count is == %d",count);
    _CountingLabel.text = [NSString stringWithFormat:@"%d",count];
    if (count<=0) {
        count =0;
    }
    
}
@end
