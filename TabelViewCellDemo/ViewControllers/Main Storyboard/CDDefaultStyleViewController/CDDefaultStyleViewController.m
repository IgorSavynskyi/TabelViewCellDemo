//
//  CDDefaultStyleViewController.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDDefaultStyleViewController.h"
#import "CDDataManager.h"
#import "FootballClubModel.h"
#import "FacadeTableViewCell.h"
#import "UIColor+Additions.h"
#import "Presenter.h"

@interface CDDefaultStyleViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray<FootballClubModel*> *clubsDataSource;
@end

@implementation CDDefaultStyleViewController

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
    FacadeTableViewCell *facadeCell = [tableView dequeueReusableCellWithIdentifier:@"FacadeTableViewCellReuseId" forIndexPath:indexPath];
   
    // facade cell configuration
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

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FootballClubModel *selectedClubModel = self.clubsDataSource[indexPath.row];
    [Presenter presentClubProfileViewController:selectedClubModel navigation:self.navigationController];
}


@end
