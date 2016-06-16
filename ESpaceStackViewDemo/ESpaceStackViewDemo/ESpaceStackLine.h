//
//  ESpaceStackLine.h
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/17/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ESpaceStackLine : NSObject

- (instancetype)initWithLinePosition:(CGPoint)position lineWidth:(CGFloat)lineWidth itemSpace:(CGFloat)itemSpace;

@property (nonatomic, assign, readonly)CGPoint linePosition;
@property (nonatomic, assign, readonly)CGFloat lineWidth;
@property (nonatomic, assign, readonly)CGFloat lineHeight;
@property (nonatomic, readonly)NSMutableArray <UIView *>*subItems;

// Return No, if there is no enough space.
- (BOOL)appendView:(UIView *)view;

@end
