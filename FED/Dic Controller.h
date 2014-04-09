//
//  Dic Controller.h
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dic_Controller : UIViewController<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate,UISearchDisplayDelegate,UIScrollViewDelegate>

{
    
}
@property (strong, nonatomic) IBOutlet UIProgressView *ProgressBmr;
@property (strong, nonatomic) IBOutlet UILabel *cal;
@property (retain, nonatomic) IBOutlet UITableView *foodTable;

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

    
- (void)hideKeyboard:(UITapGestureRecognizer *)sender;
- (BOOL)searchBarShouldReturn:(UISearchBar *)search;
// - (void)scrollViewWillEndDragging:(UIScrollView *)scrollView;
@end
