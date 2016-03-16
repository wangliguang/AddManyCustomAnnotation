//
//  CustomPinAnnotationView.m
//  AddManyCustomAnnotation
//
//  Created by GG on 16/3/13.
//  Copyright © 2016年 GG. All rights reserved.
//

#import "CustomAnnotationView.h"

@implementation CustomAnnotationView

- (instancetype)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier{
    
    if ([super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier]) {
        //在大头针旁边加一个label
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, -15, 50, 20)];
        self.label.textColor = [UIColor grayColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [UIFont systemFontOfSize:10];
        [self addSubview:self.label];

        
    }
    
    return self;
}


@end
