//
//  Theme.m
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-15.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import "Theme.h"


@implementation Theme

static NSString* _currentTheme = nil;

+ (void) setCurrentTheme:(NSString*) currentTheme {
    _currentTheme = currentTheme;
}

+ (NSString*) getCurrentTheme {
    return _currentTheme;
}

@end
