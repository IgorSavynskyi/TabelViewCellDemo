//
//  CDDataManager.m
//  TabelViewCellDemo
//
//  Created by Igor Savynskyi on 3/5/17.
//  Copyright © 2017 Igor Savynskyi. All rights reserved.
//

#import "CDDataManager.h"
#import "FootballClubModel.h"

@implementation CDDataManager

#pragma mark - Public API

+(instancetype)shared {
    static CDDataManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[CDDataManager alloc] init];
        [sharedManager generateButchOfClubs:1];
    });
    return sharedManager;
}

#pragma mark - Private API

-(void)generateButchOfClubs:(NSUInteger)butchCount {
    NSMutableArray<FootballClubModel*> *tempTeams = [NSMutableArray array];
    for (int i = 0; i < butchCount; ++i) {
        FootballClubModel *realMadrid = [FootballClubModel new];
        realMadrid.name = @"Real Madrid";
        realMadrid.emblem = @"realMadrid";
        realMadrid.progress = 0;
        [tempTeams addObject:realMadrid];
        
        FootballClubModel *bayernMunich = [FootballClubModel new];
        bayernMunich.name = @"Bayern Munich";
        bayernMunich.emblem = @"bayernMunich";
        bayernMunich.progress = 0;
        [tempTeams addObject:bayernMunich];
        
        FootballClubModel *barcelonaFC = [FootballClubModel new];
        barcelonaFC.name = @"Barcelona";
        barcelonaFC.emblem = @"barcelonaFC";
        barcelonaFC.progress = 0;
        [tempTeams addObject:barcelonaFC];
        
        FootballClubModel *atleticoMadrid = [FootballClubModel new];
        atleticoMadrid.name = @"Atletico Madrid";
        atleticoMadrid.emblem = @"atleticoMadrid";
        atleticoMadrid.progress = 0;
        [tempTeams addObject:atleticoMadrid];
        
        FootballClubModel *juventusFC = [FootballClubModel new];
        juventusFC.name = @"Juventus";
        juventusFC.emblem = @"juventusFC";
        juventusFC.progress = 4;
        [tempTeams addObject:juventusFC];
        
        FootballClubModel *psgFC = [FootballClubModel new];
        psgFC.name = @"Paris Saint-Germain";
        psgFC.emblem = @"psgFC";
        psgFC.progress = 1;
        [tempTeams addObject:psgFC];
        
        FootballClubModel *borussiaDortmund = [FootballClubModel new];
        borussiaDortmund.name = @"Borussia Dortmund";
        borussiaDortmund.emblem = @"borussiaDortmund";
        borussiaDortmund.progress = 1;
        [tempTeams addObject:borussiaDortmund];
        
        FootballClubModel *sevillaFC = [FootballClubModel new];
        sevillaFC.name = @"Sevilla Football Club";
        sevillaFC.emblem = @"sevillaFC";
        sevillaFC.progress = 6;
        [tempTeams addObject:sevillaFC];
        
        FootballClubModel *benficaFC = [FootballClubModel new];
        benficaFC.name = @"Sport Lisboa e Benfica";
        benficaFC.emblem = @"benficaFC";
        benficaFC.progress = -3;
        [tempTeams addObject:benficaFC];
        
        FootballClubModel *chelseaFC = [FootballClubModel new];
        chelseaFC.name = @"Chelsea Football Club";
        chelseaFC.emblem = @"chelseaFC";
        chelseaFC.progress = -5;
        [tempTeams addObject:chelseaFC];
    }
    self.footbalClubs = tempTeams.copy;
}



@end
