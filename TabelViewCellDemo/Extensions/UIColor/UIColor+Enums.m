//
//  UIColor+Enums.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "UIColor+Enums.h"
#import "UIColor+Additions.h"

@implementation UIColor (Enums)

+(UIColor*)colorForProgressEnum:(Progress)progressType {
    switch (progressType) {
        case ZeroProgress:
            return UIColor.zeroProgressColor;
        case PositiveProgress:
            return UIColor.positiveProgressColor;
        case NegativeProgress:
            return UIColor.negativeProgressColor;
    }
}


@end
