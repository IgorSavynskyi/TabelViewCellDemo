//
//  CDFacadeModelConfigurationViewController.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDFacadeModelConfigurationViewController.h"
#import "CDDataManager.h"
#import "FootballClubModel.h"
#import "FacadeWithModelTableCell.h"
#import "UIColor+Additions.h"
#import "Presenter.h"


@interface CDFacadeModelConfigurationViewController () <UITableViewDataSource, FacadeWithModelTableCellDelegate>

@property (strong, nonatomic) NSArray<FootballClubModel*> *clubsDataSource;
@end

@implementation CDFacadeModelConfigurationViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clubsDataSource = CDDataManager.shared.footbalClubs;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.clubsDataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FootballClubModel *sourceClubModel = self.clubsDataSource[indexPath.row];
    FacadeWithModelTableCell *facadeCell = [tableView dequeueReusableCellWithIdentifier:@"FacadeWithModelTableCellReuseId" forIndexPath:indexPath];
    
    // facade with model cell configuration
    facadeCell.delegate = self;
    facadeCell.relatedClubModel = sourceClubModel;
    facadeCell.emblemImageView.image = [UIImage imageNamed:sourceClubModel.emblem];
    facadeCell.titleLabel.text = sourceClubModel.name;
    if (sourceClubModel.progress > 0) {
        facadeCell.progressLabel.textColor = UIColor.positiveProgressColor;
        facadeCell.progressLabel.text = [NSString stringWithFormat:@"+%ld", sourceClubModel.progress];
    } else if (sourceClubModel.progress == 0) {
        facadeCell.progressLabel.textColor = UIColor.zeroProgressColor;
        facadeCell.progressLabel.text = @"-";
    } else {
        facadeCell.progressLabel.textColor = UIColor.negativeProgressColor;
        facadeCell.progressLabel.text = [NSString stringWithFormat:@"%ld", sourceClubModel.progress];
    }
    
    return facadeCell;
}

#pragma mark - FacadeWithModelTableCellDelegate

-(void)didSelectFacadeWithModelTableCell:(FacadeWithModelTableCell*)cell {
    [Presenter presentClubProfileViewController:cell.relatedClubModel navigation:self.navigationController];
}

@end
