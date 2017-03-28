//
//  CALayer+PauseAimate.m
//  FM
//
//  Created by chizhonghao on 17/3/23.
//  Copyright © 2017年 chizhonghao. All rights reserved.
//

#import "CALayer+PauseAimate.h"

@implementation CALayer (PauseAimate)


- (void)pauseAimate {
    
    CFTimeInterval pasuseTime = [self convertTime:CACurrentMediaTime() fromLayer:nil];
    self.speed = 0.0;
    self.timeOffset = pasuseTime;
}

- (void)resumeAnimate {
    
    CFTimeInterval pauseTime = [self timeOffset];
    self.speed = 1.0;
    self.timeOffset = 0.0;
    self.beginTime = 0.0;
    CFTimeInterval timeSincePause = [self convertTime:CACurrentMediaTime() toLayer:nil] - pauseTime ;
    self.beginTime = timeSincePause;
}

@end
