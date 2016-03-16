//
//  MyAnnotation.m
//  AddManyCustomAnnotation
//
//  Created by GG on 16/3/13.
//  Copyright © 2016年 GG. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation


- (instancetype)initAnnotationModelWithDict:(NSDictionary *)dict{
    
    self = [super init];
    
    if (self) {
        
        self.coordinate = CLLocationCoordinate2DMake([dict[@"coordinate"][@"latitude"] doubleValue], [dict[@"coordinate"][@"longitude"] doubleValue]);
        
        self.title = dict[@"detail"];
        
        self.name = dict[@"name"];
        
        self.type = dict[@"type"];
        
    }
    
    return self;
    
}

@end
