//
//  ConfigUseCases.m
//  APOD
//
//  Created by Humberto Monterrosa on 18/12/21.
//

#import "ConfigUseCases.h"
#import "../Domain/UseCases/RetrievePicturesWeek.h"
#import "../Domain/UseCases/RetrievePictureDay.h"
#import "../Services/APOD/APODService.h"

@implementation ConfigUseCases

+(void)registerUseCases{
    [[RetrievePicturesWeek sharedIntance] setApodDelegate:[APODService sharedIntance]];
    [[RetrievePictureDay sharedIntance] setApodDelegate:[APODService sharedIntance]];
    
}

@end
