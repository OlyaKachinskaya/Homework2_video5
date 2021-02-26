//
//  Schoolchild.m
//  Inheritance
//
//  Created by Оля Качинская on 26.02.2021.
//

#import "Schoolchild.h"

@implementation Schoolchild

@synthesize FavSubject, AverageScore;

- (void)action
{
    [super action];
    NSLog(@"do homework");
}

- (void) DisplayProperties
{
    NSLog(@"Name is %@\nHeight is %.1f cm\nWeight is %.1f kg\nSex is %@\nFavorite subject is %@\nAverage score is %.1f",
          [self Name],
          [self Height],
          [self Weight],
          [self Sex],
          [self FavSubject],
          [self AverageScore]);
    
    [self action];
}
@end
