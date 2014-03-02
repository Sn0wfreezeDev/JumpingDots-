//
//  JumpingDots.m
//  HappyAd
//
//  Created by Alexander Heinrich on 02/03/14.
//  Copyright (c) 2014 Sn0wfreeze Development UG. All rights reserved.
//

#import "JumpingDots.h"
#import <QuartzCore/QuartzCore.h>

#define animationTime 0.3

@implementation JumpingDots

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = frame.size.height/2;
            }
    return self;
}

-(id)initWithFrame:(CGRect)rect color:(UIColor *)color {
    self = [super initWithFrame:rect];
    if (self) {
        _size = (CGRectGetWidth(self.frame)/3 - 5);
        _dot1 = [[UIView alloc] initWithFrame:CGRectMake(5, CGRectGetHeight(self.frame) + _size, _size, _size)];
        _dot1.layer.cornerRadius = _size/2;
        [_dot1 setBackgroundColor:color];

        _dot2 = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_dot1.frame) + 5, CGRectGetHeight(self.frame) + _size, _size, _size)];
        _dot2.layer.cornerRadius = _size/2;
        [_dot2 setBackgroundColor:color];
        
         _dot3 = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_dot2.frame) + 5, CGRectGetHeight(self.frame) + _size, _size, _size)];
        _dot3.layer.cornerRadius = _size/2;
        [_dot3 setBackgroundColor:color];
        
        [self addSubview:_dot1];
        [self addSubview:_dot2];
        [self addSubview:_dot3];

    }
    
    return self;
}


-(void)startAnimating {
    [self jumpUpDot1];
}

-(void)jumpUpDot1 {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpDownDot1)];
    CGRect frame =  _dot1.frame;
    frame.origin.y = frame.origin.y - _size /2;
    [_dot1 setFrame:frame];
    [UIView commitAnimations];
}

-(void)jumpDownDot1 {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpUpDot2)];
    CGRect frame =  _dot1.frame;
    frame.origin.y = frame.origin.y + _size /2;
    [_dot1 setFrame:frame];
    [UIView commitAnimations];
}

-(void)jumpUpDot2{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpDownDot2)];
    CGRect frame =  _dot2.frame;
    frame.origin.y = frame.origin.y - _size /2;
    [_dot2 setFrame:frame];
    [UIView commitAnimations];
}

-(void)jumpDownDot2 {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpUpDot3)];
    CGRect frame =  _dot2.frame;
    frame.origin.y = frame.origin.y + _size /2;
    [_dot2 setFrame:frame];
    [UIView commitAnimations];
}


-(void)jumpUpDot3 {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpDownDot3)];
    CGRect frame =  _dot3.frame;
    frame.origin.y = frame.origin.y - _size /2;
    [_dot3 setFrame:frame];
    [UIView commitAnimations];
}

-(void)jumpDownDot3 {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDidStopSelector:@selector(jumpUpDot1)];
    CGRect frame =  _dot3.frame;
    frame.origin.y = frame.origin.y + _size /2;
    [_dot3 setFrame:frame];
    [UIView commitAnimations];
}


@end
