//
//  IndependentTableCell.h
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IndependentTableCell, FootballClubModel;

@protocol IndependentTableCellDelegate <NSObject>
-(void)didSelectIndependentCell:(IndependentTableCell*)cell;
@end

@interface IndependentTableCell : UITableViewCell
@property (weak, nonatomic) id <IndependentTableCellDelegate> delegate;
@property (strong, nonatomic) FootballClubModel *sourceClubModel;
@end
