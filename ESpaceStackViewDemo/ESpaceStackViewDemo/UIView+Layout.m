//
//  UIView+Layout.m
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/16/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import "UIView+Layout.h"

@implementation UIView (Layout)

#pragma mark - Super view related layout
- (UIView *)leftPaddingSuper:(CGFloat)padding {
    CGRect frame = self.frame;
    frame.origin.x = padding;
    self.frame = frame;
    
    return self;
}

- (UIView *)rightPaddingSuper:(CGFloat)padding {
    CGFloat superWidth = UIViewGetWidth(self.superview);
    CGFloat selfWidth = UIViewGetWidth(self);
    CGRect frame = self.frame;
    frame.origin.x = (superWidth - padding - selfWidth);
    self.frame = frame;
    
    return self;
}

- (UIView *)topPaddingSuper:(CGFloat)padding {
    CGRect frame = self.frame;
    frame.origin.y = padding;
    self.frame = frame;
    
    return self;
}

- (UIView *)bottomPaddingSuper:(CGFloat)padding {
    CGFloat superHeight = UIViewGetHeight(self.superview);
    CGFloat selfHeight = UIViewGetHeight(self);
    CGRect frame = self.frame;
    frame.origin.y = (superHeight - padding - selfHeight);
    self.frame = frame;
    
    return self;
}

#pragma mark - Child view related layout

- (UIView *)leftPaddingView:(UIView *)relatedView padding:(CGFloat)padding {
    CGRect frame = self.frame;
    frame.origin.x = (UIViewGetMaxX(relatedView) + padding);
    self.frame = frame;
    
    return self;
}
- (UIView *)rightPaddingView:(UIView *)relatedView padding:(CGFloat)padding {
    CGFloat selfWidth = UIViewGetWidth(self);
    CGRect frame = self.frame;
    frame.origin.x = (UIViewGetMinX(relatedView) - padding - selfWidth);
    self.frame = frame;

    return self;
}
- (UIView *)topPaddingView:(UIView *)relatedView padding:(CGFloat)padding {
    CGRect frame = self.frame;
    frame.origin.y = (UIViewGetMaxY(relatedView) + padding);
    self.frame = frame;

    return self;
}
- (UIView *)bottomPaddingView:(UIView *)relatedView padding:(CGFloat)padding {
    CGFloat selfHeight = UIViewGetHeight(self);
    CGRect frame = self.frame;
    frame.origin.y = (UIViewGetMinY(relatedView) - padding - selfHeight);
    self.frame = frame;
    
    return self;
}

@end
