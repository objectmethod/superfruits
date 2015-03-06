//
//  AppDelegate.m
//  Flappy Felipe
//
//  Created by Main Account on 2/13/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import "AppDelegate.h"

@import AVFoundation;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  [[AVAudioSession sharedInstance] setActive:NO error:nil];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  [[AVAudioSession sharedInstance] setActive:NO error:nil];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  [[AVAudioSession sharedInstance] setActive:YES error:nil];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}


- (NSString *)characterImageName {
    if (_characterImageName == nil) {
        // Step 1.) change the number of characters
        int r = arc4random_uniform(2);
        
        NSLog(@"r: %d", r);
        
        // Step 2.) add images to project named as
        // strawberry: Bird0-0, Bird0-1, Bird0-2, etc.
        // blueberry: Bird1-0, Bird1-1, Bird1-2, etc.
        // etc.
        
        _characterImageName = [NSString stringWithFormat:@"Bird%d", r];
    }
    
    NSLog(@"imageName: %@", _characterImageName);
    
    return _characterImageName;
}

@end
