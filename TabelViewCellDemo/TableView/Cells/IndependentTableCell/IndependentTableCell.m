//
//  IndependentTableCell.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "IndependentTableCell.h"
#import "FootballClubModel.h"
#import "UIColor+Additions.h"

@interface IndependentTableCell ()
@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@end

@implementation IndependentTableCell

#pragma mark - Setters, Getters

-(void)setSourceClubModel:(FootballClubModel *)sourceClubModel {
    _sourceClubModel = sourceClubModel;
    [self renderClubModelData];
}

#pragma mark - Private API

-(void)renderClubModelData {
    // independent cell configuration
    self.emblemImageView.image = [UIImage imageNamed:self.sourceClubModel.emblem];
    self.titleLabel.text = self.sourceClubModel.name;
    if (self.sourceClubModel.progress > 0) {
        self.progressLabel.textColor = UIColor.positiveProgressColor;
        self.progressLabel.text = [NSString stringWithFormat:@"+%ld", self.sourceClubModel.progress];
    } else if (self.sourceClubModel.progress == 0) {
        self.progressLabel.textColor = UIColor.zeroProgressColor;
        self.progressLabel.text = @"-";
    } else {
        self.progressLabel.textColor = UIColor.negativeProgressColor;
        self.progressLabel.text = [NSString stringWithFormat:@"%ld", self.sourceClubModel.progress];
    }
}

#pragma mark - User Actions

- (IBAction)selectAction:(id)sender {
    [self.delegate didSelectIndependentCell:self];
}


@end
