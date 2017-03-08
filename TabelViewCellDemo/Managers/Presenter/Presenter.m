//
//  Presenter.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "Presenter.h"
#import "CDDefaultStyleViewController.h"
#import "CDViperConfigurationStyleViewController.h"
#import "CDMVVMCellConfigurationViewController.h"
#import "CDIndependentCellConfigurationViewController.h"
#import "CDFacadeModelConfigurationViewController.h"
#import "CDClubProfileViewController.h"

@implementation Presenter

#pragma mark - Public API

+(void)presentDefaultStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC {
    CDDefaultStyleViewController *defaultVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDDefaultStyleViewControllerId"];
    defaultVC.title = title;
    [navigationVC pushViewController:defaultVC animated:YES];
}

+(void)presentViperStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC {
    CDViperConfigurationStyleViewController *viperStyleVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDViperConfigurationStyleViewControllerId"];
    viperStyleVC.title = title;
    [navigationVC pushViewController:viperStyleVC animated:YES];
}

+(void)presentMVVMStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC {
    CDMVVMCellConfigurationViewController *mvvmStyleVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDMVVMCellConfigurationViewControllerId"];
    mvvmStyleVC.title = title;
    [navigationVC pushViewController:mvvmStyleVC animated:YES];
}

+(void)presentStrongIndependentStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC {
    CDIndependentCellConfigurationViewController *independentStyleVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDIndependentCellConfigurationViewControllerId"];
    independentStyleVC.title = title;
    [navigationVC pushViewController:independentStyleVC animated:YES];
}

+(void)presentFacadeWithRelatedModelViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC {
    CDFacadeModelConfigurationViewController *facadeModelStyleVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDFacadeModelConfigurationViewControllerId"];
    facadeModelStyleVC.title = title;
    [navigationVC pushViewController:facadeModelStyleVC animated:YES];
}

+(void)presentClubProfileViewController:(FootballClubModel*)club navigation:(UINavigationController*)navigationVC {
    CDClubProfileViewController *clubProfileVC = [[Presenter mainStoryboard] instantiateViewControllerWithIdentifier:@"CDClubProfileViewControllerId"];
    clubProfileVC.currentClub = club;
    [navigationVC pushViewController:clubProfileVC animated:YES];
}

#pragma mark - Private API

+(UIStoryboard*)mainStoryboard {
    return [UIStoryboard storyboardWithName:@"Main" bundle:nil];
}

@end
