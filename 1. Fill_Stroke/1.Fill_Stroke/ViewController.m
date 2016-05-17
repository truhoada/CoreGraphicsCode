//
//  ViewController.m
//  1.Fill_Stroke
//
//  Created by hoangdangtrung on 5/16/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"
#import "ViewFillStroke.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSTimer *timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self
                                           selector:@selector(drawRectangle)
                                           userInfo:nil repeats:YES];
}

- (void)drawRectangle {
    CGSize mainSize = self.view.bounds.size;
    
    CGRect rect1 = CGRectMake(mainSize.width/4, 50, mainSize.width/2, mainSize.width/2);
    ViewFillStroke *view1 = [[ViewFillStroke alloc] initWithFrame:rect1];
    [self.view addSubview:view1];
    
    CGRect rect2 = CGRectMake(view1.bounds.size.width/4, view1.bounds.size.height/4, view1.bounds.size.width/2, view1.bounds.size.width/2);
    ViewFillStroke *view2 = [[ViewFillStroke alloc] initWithFrame:rect2];
    [view1 addSubview:view2];
}


@end











