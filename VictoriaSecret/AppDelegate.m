//
//  AppDelegate.m
//  VictoriaSecret
//
//  Created by TuanTa on 10/30/15.
//  Copyright (c) 2015 TuanTa. All rights reserved.
//

#import "AppDelegate.h"
#import "DataManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    DataManager *dataManager = [DataManager getSingleton];
    return YES;
}

@end
