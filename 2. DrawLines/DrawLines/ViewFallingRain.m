//
//  ViewFallingRain.m
//  DrawLines
//
//  Created by hoangdangtrung on 5/16/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewFallingRain.h"

@implementation ViewFallingRain {
    NSTimer *_timer;
    double alpha;
    double sinAlpha;
    double cosAlpha;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        alpha = M_PI_2 / 3.0f;
        sinAlpha = sin(alpha);
        cosAlpha = cos(alpha);
        _timer = [NSTimer scheduledTimerWithTimeInterval: 0.1
                                                  target: self
                                                selector: @selector(refreshView)
                                                userInfo: nil
                                                 repeats: YES];
    }
    return self;
    
}

- (void) refreshView
{
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor); //Set Fill Color
    CGContextFillRect(context, rect); //Paints
    
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    //Set the width of the pen mark
    CGContextSetLineWidth(context, 1.0);
    
    for (int i = 0; i < 320; i++)
    {
        
        CGContextBeginPath(context);
        
        //Chuyển đến một điểm
        CGFloat x = arc4random() % (int)rect.size.width;
        CGFloat y = arc4random() % (int)rect.size.height;
        CGFloat len = arc4random() % 60;
        
        CGContextMoveToPoint(context, x, y);
        
        //Kéo một đường từ một điểm đến một điểm
        CGContextAddLineToPoint(context, x + len *sinAlpha, y + len * cosAlpha);
        CGContextDrawPath(context, kCGPathStroke);
    }
}

@end
