//
//  MVVMTableCellViewModel.h
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC.h>

@class FootballClubModel;

typedef NS_ENUM(NSInteger, Progress) {
    ZeroProgress = 0,
    PositiveProgress,
    NegativeProgress
};

@interface MVVMTableCellViewModel : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *emblem;
@property (strong, nonatomic) NSString *progress;
@property (assign, nonatomic) Progress progressType;
@property (strong ,nonatomic) RACCommand *command;

- (id)initWithFootballClubModel:(FootballClubModel*)clubModel;

@end
