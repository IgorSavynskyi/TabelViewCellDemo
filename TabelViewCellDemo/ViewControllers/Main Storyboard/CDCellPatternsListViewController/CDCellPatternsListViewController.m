//
//  CDCellPatternsListViewController.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDCellPatternsListViewController.h"
#import "Presenter.h"

static NSString *kDefaultPattern = @"Facade-style (default)";
static NSString *kViperPattern = @"VIPER-style";
static NSString *kMVVMPattern = @"MVVM-style";
static NSString *kStrongIndependent = @"Independent-style";
static NSString *kFacadeWithRelatedModel = @"Facade with related model";

@interface CDCellPatternsListViewController ()
@property (strong, nonatomic) NSArray<NSString*> *patternsList;
@end

@implementation CDCellPatternsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.patternsList = @[kDefaultPattern, kViperPattern, kMVVMPattern, kStrongIndependent, kFacadeWithRelatedModel];
    self.tableView.tableFooterView = [UIView new];
}

#pragma mark - Private API

-(void)didSelectPatternWithIdentifier:(NSString*)patternId {
    if ([patternId isEqualToString:kDefaultPattern]) {
        [Presenter presentDefaultStyleViewControllerWithTitle:kDefaultPattern navigation:self.navigationController];
    } else if ([patternId isEqualToString:kViperPattern]) {
        [Presenter presentViperStyleViewControllerWithTitle:kViperPattern navigation:self.navigationController];
    } else if ([patternId isEqualToString:kMVVMPattern]) {
        [Presenter presentMVVMStyleViewControllerWithTitle:kMVVMPattern navigation:self.navigationController];
    } else if ([patternId isEqualToString:kStrongIndependent]) {
        [Presenter presentStrongIndependentStyleViewControllerWithTitle:kStrongIndependent navigation:self.navigationController];
    } else if ([patternId isEqualToString:kFacadeWithRelatedModel]) {
        [Presenter presentFacadeWithRelatedModelViewControllerWithTitle:kFacadeWithRelatedModel navigation:self.navigationController];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.patternsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCellReuseId" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld. %@", indexPath.row + 1, self.patternsList[indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *selectedPattern = self.patternsList[indexPath.row];
    [self didSelectPatternWithIdentifier:selectedPattern];
}


@end
