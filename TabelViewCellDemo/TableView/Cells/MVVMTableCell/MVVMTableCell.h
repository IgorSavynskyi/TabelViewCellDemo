//
//  MVVMTableCell.h
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVVMTableCellViewModel;

@interface MVVMTableCell : UITableViewCell

@property (strong, nonatomic) MVVMTableCellViewModel *sourceViewModel;

@end
