//
//  ViperTableViewCell.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "ViperTableViewCell.h"

@interface ViperTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@end

@implementation ViperTableViewCell

#pragma mark - Public API

-(void)setEmblemImage:(UIImage*)emblem {
    self.emblemImageView.image = emblem;
}

-(void)setTitleLabelText:(NSString*)title {
    self.titleLabel.text = title;
}

-(void)setProgressLabelTextColor:(UIColor*)progressColor {
    self.progressLabel.textColor = progressColor;
}

-(void)setProgressLabelText:(NSString*)progress {
    self.progressLabel.text = progress;
}

@end
