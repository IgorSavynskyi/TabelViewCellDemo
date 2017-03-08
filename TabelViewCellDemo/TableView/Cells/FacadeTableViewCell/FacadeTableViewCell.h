//
//  FacadeTableViewCell.h
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FacadeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;

@end
