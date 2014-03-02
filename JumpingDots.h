//
//  JumpingDots.h
//  HappyAd
//
//  Created by Alexander Heinrich on 02/03/14.
//  Copyright (c) 2014 Sn0wfreeze Development UG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JumpingDots : UIView

@property (nonatomic, strong) UIView *dot1;
@property (nonatomic, strong) UIView *dot2;
@property (nonatomic, strong) UIView *dot3;

@property (nonatomic) CGFloat size;

-(id)initWithFrame:(CGRect)rect color:(UIColor *)color;
-(void)startAnimating; 

@end
