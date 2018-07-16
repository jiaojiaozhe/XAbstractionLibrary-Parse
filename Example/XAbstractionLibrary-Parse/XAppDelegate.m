//
//  XAppDelegate.m
//  XAbstractionLibrary-Parse
//
//  Created by jiaojiaozhe on 07/13/2018.
//  Copyright (c) 2018 jiaojiaozhe. All rights reserved.
//

#import "XAppDelegate.h"
#import <XAbstractionLibrary_Parse/XAbstractionLibrary-Parse-umbrella.h>

#import "SYTestResponse.h"
#import "SYPublishImageConfig.h"

@implementation XAppDelegate

- (NSDictionary *)dictionaryWithJSONData:(NSData *)data
{
    NSError *error;
    if (data == nil) return [[NSDictionary alloc] init];
    if ([data length] <= 0) return [[NSDictionary alloc] init];
    
    return [NSJSONSerialization JSONObjectWithData:data
                                           options:NSJSONReadingMutableContainers
                                             error:&error];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSString *bundlePath = [[NSBundle mainBundle]pathForResource:@"localBordel" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:bundlePath];
    NSDictionary *responseDic = [self dictionaryWithJSONData:data];
    SYTestResponse  *response = [XJSONAdapter modelOfClass:[SYTestResponse class] fromJSONDictionary:responseDic error:nil];
    SYPublishImageConfig *config2 = [response.clientConfig.publish_image_edge objectAtIndex:2];
    config2.dateTime = @(1449108964.379611);
    config2.is_default = YES;
    SYPublishImageConfig *config1 = [response.clientConfig.publish_image_edge objectAtIndex:1];
    config1.is_default = [NSDate date];
    config1.dateTime = @"2015-12-03 02:16:04";
    SYPublishImageConfig *config0 = [response.clientConfig.publish_image_edge objectAtIndex:0];
    config0.is_default = @(1.23);
    NSDictionary *responseDic2 = [XJSONAdapter JSONDictionaryFromModel:response error:nil];
    
    NSData *archiverData = [NSKeyedArchiver archivedDataWithRootObject:response];
    SYTestResponse *unArchiverResponse = [NSKeyedUnarchiver unarchiveObjectWithData:archiverData];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
