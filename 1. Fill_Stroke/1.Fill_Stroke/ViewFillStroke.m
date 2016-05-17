//
//  ViewFillStroke.m
//  1.Fill_Stroke
//
//  Created by hoangdangtrung on 5/16/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewFillStroke.h"
//Hàm trong C
CGColorRef RandomColor() {
    CGFloat red = (arc4random() % 256 / 255.0f);
    CGFloat green = (arc4random() % 256) / 255.0f;
    CGFloat blue = (arc4random() % 256) / 255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f].CGColor;
}

@implementation ViewFillStroke


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext(); //Nơi vẽ
    CGContextSetFillColorWithColor(context, RandomColor()); //Set mầu
    CGContextSetStrokeColorWithColor(context, RandomColor()); //Set mầu
    CGContextSetLineWidth(context, 20);
    
    CGContextFillRect(context, rect); // Đổ mầu
    CGContextStrokeRect(context, rect);
}


@end
