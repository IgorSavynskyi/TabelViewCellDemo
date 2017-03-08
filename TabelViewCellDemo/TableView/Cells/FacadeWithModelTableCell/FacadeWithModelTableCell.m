//
//  FacadeWithModelTableCell.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "FacadeWithModelTableCell.h"

@implementation FacadeWithModelTableCell

#pragma mark - User Actions

- (IBAction)selectAction:(id)sender {
    [self.delegate didSelectFacadeWithModelTableCell:self];
}


@end
