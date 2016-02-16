//
//  NameCell.m
//  TableDemo
//
//  Created by Magneto on 6/21/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import "NameCell.h"

@implementation NameCell
@synthesize lblName,imgIcon;
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

@end
