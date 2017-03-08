//
//  CDDataManager.h
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FootballClubModel;

@interface CDDataManager : NSObject
@property (strong, nonatomic) NSArray<FootballClubModel*> *footbalClubs;

+(instancetype)shared;

@end
