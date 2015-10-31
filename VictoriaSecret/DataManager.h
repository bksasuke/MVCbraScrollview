//
//  DataManager.h
//  VictoriaSecret
//
//  Created by TuanTa on 10/30/15.
//  Copyright (c) 2015 TuanTa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
@property (nonatomic,strong) NSArray *data;
+(instancetype)getSingleton;

@end
