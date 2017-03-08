//
//  CDIndependentCellConfigurationViewController.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDIndependentCellConfigurationViewController.h"
#import "CDDataManager.h"
#import "FootballClubModel.h"
#import "IndependentTableCell.h"
#import "UIColor+Additions.h"
#import "Presenter.h"

@interface CDIndependentCellConfigurationViewController () <UITableViewDataSource, IndependentTableCellDelegate>
@property (strong, nonatomic) NSArray<FootballClubModel*> *clubsDataSource;
@end

@implementation CDIndependentCellConfigurationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clubsDataSource = CDDataManager.shared.footbalClubs;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.clubsDataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    IndependentTableCell *independentCell = [tableView dequeueReusableCellWithIdentifier:@"IndependentTableCellReuseId" forIndexPath:indexPath];
    independentCell.delegate = self;
    independentCell.sourceClubModel = self.clubsDataSource[indexPath.row];
    return independentCell;
}

#pragma mark - IndependentTableCellDelegate

-(void)didSelectIndependentCell:(IndependentTableCell*)cell {
    [Presenter presentClubProfileViewController:cell.sourceClubModel navigation:self.navigationController];
}


@end
