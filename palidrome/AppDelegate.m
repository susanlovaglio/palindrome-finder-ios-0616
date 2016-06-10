//
//  AppDelegate.m
//  palidromefinder
//
//  Created by susan lovaglio on 6/6/16.
//  Copyright © 2016 susan lovaglio. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    BOOL racecar = [self isPalindrome:@"abba"];
    NSLog(@"%d", racecar);
    return YES;
}

-(BOOL)isPalindrome:(NSString*)string{
    
    BOOL palidrome = NO;
    
    NSMutableString *reversed = [[NSMutableString alloc]init];
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        
        unichar letter = [string characterAtIndex:i-1];
        
        [reversed appendFormat:@"%C", letter];
    }
    
    if ([string isEqualToString:reversed]) {
        palidrome = YES;
    }
    
    return palidrome;
}

@end
