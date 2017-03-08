//
//  CDClubProfileViewController.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDClubProfileViewController.h"
#import "FootballClubModel.h"

@interface CDClubProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *emblemImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation CDClubProfileViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self renderClubData];
}

#pragma mark - Private API

-(void)renderClubData {
    self.emblemImageView.image = [UIImage imageNamed:self.currentClub.emblem];
    self.nameLabel.text = self.currentClub.name;
}


@end
