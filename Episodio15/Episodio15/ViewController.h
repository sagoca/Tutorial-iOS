//
//  ViewController.h
//  Episodio15
//
//  Created by Santiago Gonzalez Causse on 5/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

