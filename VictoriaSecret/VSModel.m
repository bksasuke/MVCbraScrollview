//
//  VSModel.m
//  VictoriaSecret
//
//  Created by TuanTa on 10/30/15.
//  Copyright (c) 2015 TuanTa. All rights reserved.
//

#import "VSModel.h"

@implementation VSModel
-(instancetype) init: (NSString*) name
         withMeasure: (NSString*) measure
            andPhoto: (NSString*) photo {
    
    if (self = [super init]) {
        self.name = name;
        self.measure = measure;
        NSString* photoFile = [NSString stringWithFormat:@"%@.jpg",photo];
        self.photo = [UIImage imageNamed:photoFile];
        NSString* iconFile = [NSString stringWithFormat:@"%@0.jpg",photo];
        self.icon = [ UIImage imageNamed:photo];
    }
    return self;

}

@end
