//
//  ViperTableViewCell.h
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViperTableViewCell : UITableViewCell

-(void)setEmblemImage:(UIImage*)emblem;
-(void)setTitleLabelText:(NSString*)title;
-(void)setProgressLabelTextColor:(UIColor*)progressColor;
-(void)setProgressLabelText:(NSString*)progress;

@end
