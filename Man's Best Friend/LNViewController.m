//
//  LNViewController.m
//  Man's Best Friend
//
//  Created by Gabi on 11/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import "LNViewController.h"
#import "LNDog.h"
#import "LNPupy.h"

@interface LNViewController ()

@end

@implementation LNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LNDog *myDog = [[LNDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [ UIImage imageNamed:@"St.Bernard.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;

    
    LNDog *secondDog = [[LNDog alloc] init];
    
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [ UIImage imageNamed:@"JackRussellTerrier.jpg"];
    LNDog *thirdDog = [[LNDog alloc] init];
    
    thirdDog.name = @"Lasie";
    thirdDog.breed = @"Colie";
    thirdDog.image = [ UIImage imageNamed:@"Collie.jpg"];
    
    LNDog *fourthDog = [[LNDog alloc] init];
    
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [ UIImage imageNamed:@"Greyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    NSLog(@"%@", self.myDogs);
    
    LNPupy *littlePupy = [[LNPupy alloc] init];
  
    [littlePupy bark];
    littlePupy.name = @"Bo O";
    littlePupy.breed = @"Portuguese Water Dog";
    littlePupy.image = [ UIImage imageNamed:@"Bo.jpeg"];
    
    [self.myDogs addObject:littlePupy];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)printHelloWorld
{
    NSLog(@"Helo World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    
    
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    
    self.currentIndex = randomIndex;
    
    LNDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"And Another";


    }


@end
