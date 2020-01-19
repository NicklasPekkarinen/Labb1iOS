//
//  Theme.h
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-15.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Theme : NSObject
+ (void) setCurrentTheme:(NSString*) currentTheme;
+ (NSString*) getCurrentTheme;
@end

NS_ASSUME_NONNULL_END
