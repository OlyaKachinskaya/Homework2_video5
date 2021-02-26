//
//  Human.m
//  Inheritance
//
//  Created by Оля Качинская on 25.02.2021.
//

#import "Human.h"

@implementation Human

@synthesize Name, Height, Weight, Sex;

- (void) DisplayProperties
{
    NSLog(@"Name is %@\nHeight is %.1f cm\nWeight is %.1f kg\nSex is %@",
          [self Name],
          [self Height],
          [self Weight],
          [self Sex]);
    
    [self action];
}

- (void) SetUpProperties:(NSString *)name :(float)height :(float)weight :(NSString *)sex
{
    [self setName:name];
    [self setHeight:height];
    [self setWeight:weight];
    [self setSex:sex];
}

- (void)action
{
    NSLog(@"go for a walk");
}
@end
