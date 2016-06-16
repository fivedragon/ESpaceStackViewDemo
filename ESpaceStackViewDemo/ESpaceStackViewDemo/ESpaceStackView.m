//
//  ESpaceStackView.m
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/16/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import "ESpaceStackView.h"
#import "UIView+Layout.h"
#import "ESpaceStackLine.h"

@interface ESpaceStackView()


@property (nonatomic, strong)NSMutableArray <ESpaceStackLine *> *stackLines;

@end


@implementation ESpaceStackView

- (instancetype)init {
    if (self = [super init]) {
        _stackLines = [NSMutableArray array];
    }
    
    return self;
}

- (void)appendView:(UIView *)view {
    [self addSubview:view];
    
    ESpaceStackLine *lastLine = _stackLines.lastObject;
    if (!lastLine) {
        CGPoint linePosition = CGPointMake(_contentInsets.left, _contentInsets.top);
        CGFloat lineWidth = UIViewGetWidth(self) - _contentInsets.left - _contentInsets.right;
        lastLine = [[ESpaceStackLine alloc] initWithLinePosition:linePosition lineWidth:lineWidth itemSpace:_columnSpace];
        [_stackLines addObject:lastLine];
    }
    
    if (![lastLine appendView:view]) {
        CGPoint linePosition = CGPointMake(_contentInsets.left, lastLine.linePosition.y + [lastLine lineHeight] + _rowSpace);
        CGFloat lineWidth = UIViewGetWidth(self) - _contentInsets.left - _contentInsets.right;
        ESpaceStackLine *newLine = [[ESpaceStackLine alloc] initWithLinePosition:linePosition lineWidth:lineWidth itemSpace:_columnSpace];
        if (![newLine appendView:view]) {
            NSAssert(NO, @"A large view should be append success in new line %@", view);
        }
        [_stackLines addObject:newLine];
    }
    
    lastLine = _stackLines.lastObject;
    
    CGFloat viewHeight = lastLine.lineHeight + lastLine.linePosition.y + _contentInsets.bottom;
    CGRect frame = self.frame;
    frame.size.height = viewHeight;
    self.frame = frame;
}

@end
