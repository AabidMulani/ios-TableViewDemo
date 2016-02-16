//
//  ViewController.m
//  TableDemo
//
//  Created by Magneto on 6/21/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import "ViewController.h"
#import "NameCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    arrOfNames=[[NSMutableArray alloc]initWithObjects:@"Aabid",@"Arif",@"Juber",@"Mahesh",@"Ratnesh",@"Ajay", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrOfNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{    
    NameCell *cell=(NameCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.lblName.text=arrOfNames[indexPath.row];
    cell.imgIcon.image=[UIImage imageNamed:@"icon-60@2x.png"];
    
    return  cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"Accessory Tapped at: %d",indexPath.row);
    NSLog(@"Name:%@",arrOfNames[indexPath.row]);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"Row Tapped: %d %d",indexPath.row,indexPath.section);
    NSLog(@"Name:%@",arrOfNames[indexPath.row]);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Testing";
}
@end
