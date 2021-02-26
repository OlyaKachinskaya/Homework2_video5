//
//  Human.h
//  Inheritance
//
//  Created by Оля Качинская on 25.02.2021.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property NSString *Name, *Sex;
@property float Height, Weight;

- (void) DisplayProperties;
- (void) action;
- (void) SetUpProperties:(NSString *)name :(float)height :(float)weight :(NSString *)sex;

@end

NS_ASSUME_NONNULL_END
