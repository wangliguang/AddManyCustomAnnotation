//
//  MyAnnotation.h
//  AddManyCustomAnnotation
//
//  Created by GG on 16/3/13.
//  Copyright © 2016年 GG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

typedef NS_ENUM(NSInteger, PinType) {
    /**
     *  超市
     */
    SUPER_MARKET = 0,
    /**
     *  火化场
     */
    CREMATORY,
    /**
     *  景点
     */
    INTEREST
};

//该模型是大头针模型，所以我必须实现MKAnnotation协议，而且必须实现CLLocationCoordinate2D coordinate属性
@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, retain) NSNumber *type;

- (instancetype)initAnnotationModelWithDict:(NSDictionary *)dict;

@end
