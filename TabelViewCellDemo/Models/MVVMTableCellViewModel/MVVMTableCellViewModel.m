//
//  MVVMTableCellViewModel.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "MVVMTableCellViewModel.h"
#import "FootballClubModel.h"

@implementation MVVMTableCellViewModel

- (id)initWithFootballClubModel:(FootballClubModel*)clubModel; {
    self = [super init];
    if (self) {
        self.title = clubModel.name;
        self.emblem = clubModel.emblem;
        
        // business logic goes here
        if (clubModel.progress > 0) {
            self.progressType = PositiveProgress;
            self.progress = [NSString stringWithFormat:@"+%ld", clubModel.progress];
        } else if (clubModel.progress == 0) {
            self.progressType = ZeroProgress;
            self.progress = @"-";
        } else {
            self.progressType = NegativeProgress;
            self.progress = [NSString stringWithFormat:@"%ld", clubModel.progress];
        }
    }
    return self;
}

@end
