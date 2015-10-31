//
//  VSModel.h
//  VictoriaSecret
//
//  Created by TuanTa on 10/30/15.
//  Copyright (c) 2015 TuanTa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKIt/UIKit.h>
@interface VSModel : NSObject
@property (nonatomic,strong) NSString *name ;
@property (nonatomic,strong) NSString *measure ;
@property (nonatomic,strong) UIImage *photo ;
@property (nonatomic,strong) UIImage *icon ;

-(instancetype) init: (NSString*) name
         withMeasure: (NSString*) measure
            andPhoto: (NSString*) photo;
@end
