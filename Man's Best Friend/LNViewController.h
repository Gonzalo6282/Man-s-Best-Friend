//
//  LNViewController.h
//  Man's Best Friend
//
//  Created by Gabi on 11/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNViewController : UIViewController


-(void)printHelloWorld;
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic)NSMutableArray * myDogs;
@property (nonatomic) int currentIndex;
@end
