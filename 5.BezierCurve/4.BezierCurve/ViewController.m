//
//  ViewController.m
//  4.BezierCurve
//
//  Created by hoangdangtrung on 5/17/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"
#import "ViewQuadraticBezierCurve.h"
#import "ViewCubicBezierCurve.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet ViewQuadraticBezierCurve *viewQuadratic;
@property (strong, nonatomic) IBOutlet ViewCubicBezierCurve *viewCubic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewQuadratic = [self.viewQuadratic initWithFrame:self.viewQuadratic.frame];
    self.viewCubic = [self.viewCubic initWithFrame:self.viewCubic.frame];
}



@end
