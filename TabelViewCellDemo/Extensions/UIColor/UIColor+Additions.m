//
//  UIColor+Additions.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "UIColor+Additions.h"

static UIColor *positiveProgressColor;

@implementation UIColor (Additions)

+(UIColor*)zeroProgressColor {
    return UIColor.purpleColor;
}

+(UIColor*)positiveProgressColor {
    if (!positiveProgressColor) {
        positiveProgressColor = [UIColor colorWithRed:0.0 green:128.0/255.0 blue:0.0 alpha:1.0];  
    }
    return positiveProgressColor;
}

+(UIColor*)negativeProgressColor {
    return UIColor.redColor;
}


@end
