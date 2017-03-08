//
//  FacadeWithModelTableCell.h
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  FacadeWithModelTableCell, FootballClubModel;

@protocol FacadeWithModelTableCellDelegate <NSObject>

-(void)didSelectFacadeWithModelTableCell:(FacadeWithModelTableCell*)cell;

@end

@interface FacadeWithModelTableCell : UITableViewCell
@property (weak, nonatomic) id <FacadeWithModelTableCellDelegate> delegate;
@property (strong, nonatomic) FootballClubModel *relatedClubModel;
@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;

@end
