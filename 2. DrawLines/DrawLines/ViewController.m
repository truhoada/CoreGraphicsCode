//
//  ViewController.m
//  DrawLines
//
//  Created by hoangdangtrung on 5/16/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"
#import "ViewFallingRain.h"

IB_DESIGNABLE

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewFallingRain *viewRain = [[ViewFallingRain alloc] init];
    viewRain.frame = self.view.frame;
    [self.view addSubview:viewRain];

}



@end
