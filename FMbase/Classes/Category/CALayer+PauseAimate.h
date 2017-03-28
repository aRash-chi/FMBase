//
//  CALayer+PauseAimate.h
//  FM
//
//  Created by chizhonghao on 17/3/23.
//  Copyright © 2017年 chizhonghao. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (PauseAimate)

//暂停动画
- (void)pauseAimate;
//恢复动画
- (void)resumeAnimate;

@end
