//
//  LNPupy.m
//  Man's Best Friend
//
//  Created by Gabi on 13/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import "LNPupy.h"

@implementation LNPupy
-(void)givePupyEyes;
{
    NSLog(@":(");
}
-(void)bark
{
    [super bark];
    NSLog(@"Whimper Whimper");
    [self givePupyEyes];
}
@end
