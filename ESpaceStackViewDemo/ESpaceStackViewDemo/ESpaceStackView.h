//
//  ESpaceStackView.h
//  ESpaceStackViewDemo
//
//  Created by heleiwu on 6/16/16.
//  Copyright © 2016 heleiwu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESpaceStackLine.h"


@interface ESpaceStackView : UIView

@property (nonatomic, assign)UIEdgeInsets contentInsets;
@property (nonatomic, assign)CGFloat rowSpace;
@property (nonatomic, assign)CGFloat columnSpace;

- (void)appendView:(UIView *)view;

@end
