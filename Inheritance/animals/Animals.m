//
//  Animals.m
//  Inheritance
//
//  Created by Оля Качинская on 26.02.2021.
//

#import "Animals.h"

@implementation Animals

@synthesize KindOfAnimal, Color, Age;

- (void) move
{
    NSLog(@"cute run");
}

- (void) SetUpProperties:(NSString *)kind :(NSString *)color :(float)age
{
    [self setKindOfAnimal:kind];
    [self setColor:color];
    [self setAge:age];
}

- (void) DisplayPropertiesOfAnimal
{
    NSLog(@"Kind of animal: %@\nColor: %@\nAge: %.1f",
          [self KindOfAnimal],
          [self Color],
          [self Age]);
    
    [self move];
}
@end
