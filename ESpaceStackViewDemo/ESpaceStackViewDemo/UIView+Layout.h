//
//  UIView+Layout.h
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/16/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIViewGetWidth(view)    (CGRectGetWidth(view.frame))
#define UIViewGetHeight(view)   (CGRectGetWidth(view.frame))
#define UIViewGetMinX(view)     (CGRectGetMinX(view.frame))
#define UIViewGetMidX(view)     (CGRectGetMidX(view.frame))
#define UIViewGetMaxX(view)     (CGRectGetMaxX(view.frame))
#define UIViewGetMinY(view)     (CGRectGetMinY(view.frame))
#define UIViewGetMidY(view)     (CGRectGetMidY(view.frame))
#define UIViewGetMaxY(view)     (CGRectGetMaxY(view.frame))

@interface UIView (Layout)

- (UIView *)leftPaddingSuper:(CGFloat)padding;
- (UIView *)rightPaddingSuper:(CGFloat)padding;
- (UIView *)topPaddingSuper:(CGFloat)padding;
- (UIView *)bottomPaddingSuper:(CGFloat)padding;

- (UIView *)leftPaddingView:(UIView *)relatedView padding:(CGFloat)padding;
- (UIView *)rightPaddingView:(UIView *)relatedView padding:(CGFloat)padding;
- (UIView *)topPaddingView:(UIView *)relatedView padding:(CGFloat)padding;
- (UIView *)bottomPaddingView:(UIView *)relatedView padding:(CGFloat)padding;

@end
