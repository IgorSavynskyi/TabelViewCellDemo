//
//  CDMVVMCellConfigurationViewController.m
//  TabelViewCellDemo
//
//  Created by Igor on 3/8/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDMVVMCellConfigurationViewController.h"
#import "CDDataManager.h"
#import "FootballClubModel.h"
#import "MVVMTableCellViewModel.h"
#import "MVVMTableCell.h"
#import "ViperTableViewCell.h"
#import "UIColor+Additions.h"
#import "Presenter.h"
#import <ReactiveObjC.h>

@interface CDMVVMCellConfigurationViewController ()
@property (weak, nonatomic) IBOutlet UITableView *footballClubsTableView;
@property (strong, nonatomic) NSArray<MVVMTableCellViewModel*> *clubsViewModelsDataSource;
@end

@implementation CDMVVMCellConfigurationViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clubsViewModelsDataSource = [self genegareClubsViewModelsDataSource];
    self.footballClubsTableView.tableFooterView = [UIView new];
}

#pragma mark - Private API

-(NSArray<MVVMTableCellViewModel*>*)genegareClubsViewModelsDataSource {
    NSMutableArray<MVVMTableCellViewModel*> *tempArray = [NSMutableArray array];
    for (FootballClubModel *clubModel in CDDataManager.shared.footbalClubs) {
        MVVMTableCellViewModel *viewModel = [[MVVMTableCellViewModel alloc] initWithFootballClubModel:clubModel];
        viewModel.command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
            [Presenter presentClubProfileViewController:clubModel navigation:self.navigationController];
            return [RACSignal empty];
        }];
        [tempArray addObject:viewModel];
    }
    return tempArray.copy;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.clubsViewModelsDataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MVVMTableCellViewModel *sourceViewModel = self.clubsViewModelsDataSource[indexPath.row];
    MVVMTableCell *mvvmCell = [tableView dequeueReusableCellWithIdentifier:@"MVVMTableCellReuseId" forIndexPath:indexPath];
    mvvmCell.sourceViewModel = sourceViewModel;
    return mvvmCell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    FootballClubModel *selectedClubModel = self.clubsDataSource[indexPath.row];
//    [Presenter presentClubProfileViewController:selectedClubModel navigation:self.navigationController];
}

@end
