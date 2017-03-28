//
//  UIImage+ZHImage.m
//  FM
//
//  Created by chizhonghao on 17/3/26.
//  Copyright © 2017年 chizhonghao. All rights reserved.
//

#import "UIImage+ZHImage.h"

@implementation UIImage (ZHImage)


+ (UIImage *)originImageWithName: (NSString *) name {
    
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (UIImage *)circleImage{
    
    
    CGSize size = self.size;
    CGFloat drawWH = size.width < size.height ? size.width : size.width;
    
    
    UIGraphicsBeginImageContext(CGSizeMake(drawWH, drawWH));
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect clipRect = CGRectMake(0, 0, drawWH, drawWH);
    CGContextAddEllipseInRect(context, clipRect);
    CGContextClip(context);
    
    CGRect drawRect = CGRectMake(0, 0, size.width, size.height);
    [self drawInRect:drawRect];
    
    UIImage * resultImage =  UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndPDFContext();
    
    return resultImage;
}

@end
