//
//  SmallButton.m
//  SmallButton
//
//  Created by Brian Bal on 9/18/12.
//  Copyright (c) 2012 UITricks. All rights reserved.
//

#import "SmallButton.h"

@implementation SmallButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGFloat widthDelta = 44.0 - self.bounds.size.width;
    CGFloat heightDelta = 44.0 - self.bounds.size.width;
    CGRect largerBounds = CGRectInset(self.bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(largerBounds, point);
}

@end
