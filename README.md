Creating a Small Button With Large Tap Area for IOS
===================================================

There are many situations in which you might want to add a button to your iOS app that is smaller than the recommended 44pt x 44pt size. A button that is smaller than this size is hard to press, but there is way to make its tappable area larger.

We can subclass UIButton and override the pointInside:withEvent method.  This method is in UIView and is called to determine if a touch event was inside the view.  So we can change this method to expand our small buttons bounds.

	- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
	{
	    CGFloat widthDelta = 44.0 - self.bounds.size.width;
	    CGFloat heightDelta = 44.0 - self.bounds.size.width;
	    CGRect largerBounds = CGRectInset(self.bounds, -0.5 * widthDelta, -0.5 * heightDelta);
	    return CGRectContainsPoint(largerBounds, point);
	}

In this case we specify a larger region 44pt x 44pt, then when a touch comes in we return true of it was in that larger region.

[Example Project](https://github.com/uitricks/SmallButtonsForIOS)