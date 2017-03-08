//
//  Presenter.h
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FootballClubModel;

@interface Presenter : NSObject

+(void)presentDefaultStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC;
+(void)presentViperStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC;
+(void)presentMVVMStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC;
+(void)presentStrongIndependentStyleViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC;
+(void)presentFacadeWithRelatedModelViewControllerWithTitle:(NSString*)title navigation:(UINavigationController*)navigationVC;

+(void)presentClubProfileViewController:(FootballClubModel*)club navigation:(UINavigationController*)navigationVC;
@end
