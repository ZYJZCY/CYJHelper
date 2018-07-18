//
//  CYJTimeButton.m
//  CYJHelper
//
//  Created by Jerry on 2018/7/18.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "CYJTimeButton.h"

@implementation CYJTimeButton

- (void)drawRect:(CGRect)rect {
    [self addTarget:self action:@selector(startTiming) forControlEvents:UIControlEventTouchUpInside];
}

- (void)startTiming{
    timeInterval = allTime;
    self.userInteractionEnabled = NO;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timingAction) userInfo:nil repeats:YES];
}

- (void)timingAction{
    timeInterval--;
    if (timeInterval == 0) {
        [self setTitle:self.endTitle forState:UIControlStateNormal];
        self.userInteractionEnabled = YES;
        [self.timer invalidate];
    }
    else{
        self.userInteractionEnabled = NO;
        [self setTitle:[NSString stringWithFormat:@"%ldS",(long)timeInterval] forState:UIControlStateNormal];
    }
}

- (instancetype)initWithFrame:(CGRect)frame allTime:(NSInteger)time
{
    self = [super initWithFrame:frame];
    if (self) {
        allTime = time;
    }
    return self;
}

@end
