//
//  DataManager.m
//  VictoriaSecret
//
//  Created by TuanTa on 10/30/15.
//  Copyright (c) 2015 TuanTa. All rights reserved.
//

#import "DataManager.h"
#import "VSModel.h"
@implementation DataManager
+ (instancetype)getSingleton {
    static DataManager *dataManager = nil;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        dataManager = [self new];  // settings = [[self alloc] init]
        NSString* filePath = [[NSBundle mainBundle] pathForResource:@"VictoriaSecret"
                                                             ofType:@"plist"];
        
        NSArray* raw = [NSArray arrayWithContentsOfFile:filePath];
       // NSLog(@"%@", raw);
        NSMutableArray* temp = [[NSMutableArray alloc] initWithCapacity:[raw count]];
        for (NSDictionary* item in raw) {
            
            VSModel* model = [[VSModel alloc] init:[item valueForKey:@"name"]
                                       withMeasure:[item valueForKey:@"measure"]
                                          andPhoto:[item valueForKey:@"photo"]];
            [temp addObject:model];
        }
        dataManager.data = [NSArray arrayWithArray:temp];
    });
    return dataManager;
}
@end
