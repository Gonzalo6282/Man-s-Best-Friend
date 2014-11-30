//
//  LNDog.h
//  Man's Best Friend
//
//  Created by Gabi on 11/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LNDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic)UIImage *image;
@property (strong, nonatomic)NSString *name;



-(void)bark;
-(void)barkANumberOfTimes: (int)numberOfTimes;
-(void)changeBreedtoWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL) isLoud;
-(int)ageInDogYearsFromAge: (int)regularAge;

@end
