//
//  Animals.h
//  Inheritance
//
//  Created by Оля Качинская on 26.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animals : NSObject

@property NSString *KindOfAnimal, *Color;
@property float Age;

- (void) move;
- (void) SetUpProperties:(NSString *)kind :(NSString *)color :(float)weight;
- (void) DisplayPropertiesOfAnimal;

@end

NS_ASSUME_NONNULL_END
