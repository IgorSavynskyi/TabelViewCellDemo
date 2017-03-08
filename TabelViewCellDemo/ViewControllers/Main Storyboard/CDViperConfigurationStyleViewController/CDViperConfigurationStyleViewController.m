//
//  CDViperConfigurationStyleViewController.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDViperConfigurationStyleViewController.h"
#import "CDDataManager.h"
#import "FootballClubModel.h"
#import "ViperTableViewCell.h"
#import "UIColor+Additions.h"
#import "Presenter.h"

@interface CDViperConfigurationStyleViewController () <UITableViewDataSource>
@property (strong, nonatomic) NSArray<FootballClubModel*> *clubsDataSource;
@end

@implementation CDViperConfigurationStyleViewController

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
    ViperTableViewCell *viperCell = [tableView dequeueReusableCellWithIdentifier:@"ViperTableViewCellReuseId" forIndexPath:indexPath];
   
    // viper cell configuration
    [viperCell setEmblemImage:[UIImage imageNamed:sourceClubModel.emblem]];
    [viperCell setTitleLabelText:sourceClubModel.name];
    
    if (sourceClubModel.progress > 0) {
        [viperCell setProgressLabelTextColor:UIColor.positiveProgressColor];
        [viperCell setProgressLabelText:[NSString stringWithFormat:@"+%ld", sourceClubModel.progress]];
    } else if (sourceClubModel.progress == 0) {
        [viperCell setProgressLabelTextColor:UIColor.zeroProgressColor];
        [viperCell setProgressLabelText:@"-"];
    } else {
        [viperCell setProgressLabelTextColor:UIColor.negativeProgressColor];
        [viperCell setProgressLabelText:[NSString stringWithFormat:@"%ld", sourceClubModel.progress]];
    }
    
    return viperCell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FootballClubModel *selectedClubModel = self.clubsDataSource[indexPath.row];
    [Presenter presentClubProfileViewController:selectedClubModel navigation:self.navigationController];
}


@end
