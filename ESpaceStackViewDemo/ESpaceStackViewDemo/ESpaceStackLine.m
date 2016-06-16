//
//  ESpaceStackLine.m
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/17/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import "ESpaceStackLine.h"
#import "UIView+Layout.h"

@interface ESpaceStackLine()

@property (nonatomic, assign)CGPoint linePosition;
@property (nonatomic, assign)CGFloat lineWidth;
@property (nonatomic, assign)CGFloat itemSpace;
@property (nonatomic, weak)UIView *maxHeightView;

@end


@implementation ESpaceStackLine

- (instancetype)initWithLinePosition:(CGPoint)position lineWidth:(CGFloat)lineWidth itemSpace:(CGFloat)itemSpace{
    if (self = [super init]) {
        _linePosition = position;
        _lineWidth = lineWidth;
        _itemSpace = itemSpace;
        _subItems = [NSMutableArray array];
    }
    
    return self;
}

- (BOOL)appendView:(UIView *)view {
    UIView *lastView = _subItems.lastObject;
    if (lastView) {
        [[view leftPaddingView:lastView padding:_itemSpace] topPaddingSuper:_linePosition.y];
        if (UIViewGetMaxX(view) > (_linePosition.x + _lineWidth - _itemSpace)) {
            return NO;
        } else {
            [_subItems addObject:view];
            [self updateLineHeight];
            return YES;
        }
    } else {
        [[view leftPaddingSuper:_linePosition.x] topPaddingSuper:_linePosition.y];
        [_subItems addObject:view];
        [self updateLineHeight];
        return YES;
    }
}

- (void)updateLineHeight {
    CGFloat viewHeight = UIViewGetHeight(_subItems.lastObject);
    if (viewHeight > _lineHeight) {
        _lineHeight = viewHeight;
    }
}

@end
