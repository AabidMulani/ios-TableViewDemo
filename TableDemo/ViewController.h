//
//  ViewController.h
//  TableDemo
//
//  Created by Magneto on 6/21/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *arrOfNames;
}
@property (strong, nonatomic) IBOutlet UITableView *tableDemo;
@end
