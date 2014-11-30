//
//  LNDog.m
//  Man's Best Friend
//
//  Created by Gabi on 11/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import "LNDog.h"

@implementation LNDog

-(void)bark
{
    NSLog(@"Wof Woof!");
}

-(void)barkANumberOfTimes: (int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark ++){
        [self bark];
    }
}
-(void)changeBreedtoWerewolf
{
 self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL) isLoud
{
    if(!isLoud){
        for (int bark = 1; bark <= numberOfTimes; bark++){
            NSLog(@"yip yip");
    }
}
    else{
        for (int bark = 1; bark <= numberOfTimes; bark++){
            NSLog(@"Ruff Ruff");
        }
    }
}

-(int)ageInDogYearsFromAge: (int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}



@end
