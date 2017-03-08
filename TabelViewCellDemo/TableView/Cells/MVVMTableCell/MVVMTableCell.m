//
//  MVVMTableCell.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "MVVMTableCell.h"
#import "MVVMTableCellViewModel.h"
#import "UIColor+Enums.h"
#import <ReactiveObjC.h>

@interface MVVMTableCell ()
@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UIButton *pressButton;
@end

@implementation MVVMTableCell

#pragma mark - Setters, Getters

-(void)setSourceViewModel:(MVVMTableCellViewModel *)sourceViewModel {
    _sourceViewModel = sourceViewModel;
    self.pressButton.rac_command = self.sourceViewModel.command;
    [self renderSorceViewModelData];
}

#pragma mark - Private API

-(void)renderSorceViewModelData {
    // mvvm cell configuration
    self.emblemImageView.image = [UIImage imageNamed:self.sourceViewModel.emblem];
    self.titleLabel.text = self.sourceViewModel.title;
    self.progressLabel.textColor = [UIColor colorForProgressEnum:self.sourceViewModel.progressType];
    self.progressLabel.text = self.sourceViewModel.progress;
}



@end
