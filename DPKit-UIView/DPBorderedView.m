//
// Created by Dani Postigo on 4/28/14.
//

#import "DPBorderedView.h"

@implementation DPBorderedView

@synthesize borderColor;
@synthesize borderOptions;

@synthesize borderWidth;

- (void) drawRect: (CGRect) rect {

    if (![borderColor isEqual: [UIColor clearColor]] &&
            borderWidth > 0) {

        CGRect bounds = self.bounds;

        [self.borderColor set];
        UIRectFill(bounds);

        CGRect innerBounds = bounds;

        if (self.borderOptions & UIRectEdgeNone) {

        } else if (self.borderOptions & UIRectEdgeAll) {
            innerBounds = CGRectInset(bounds, borderWidth * 2, borderWidth * 2);

        } else {
            if (self.borderOptions & UIRectEdgeTop) {
                innerBounds.origin.y -= borderWidth;
            }

            if (self.borderOptions & UIRectEdgeBottom) {
                innerBounds.size.height -= borderWidth;
            }

            if (self.borderOptions & UIRectEdgeLeft) {
                innerBounds.origin.x -= borderWidth;
            }

            if (self.borderOptions & UIRectEdgeRight) {
                innerBounds.size.width -= borderWidth;
            }
        }

        [self.backgroundColor set];
        UIRectFrame(innerBounds);

    }
}

#pragma mark Getters



- (UIColor *) borderColor {
    if (borderColor == nil) {
        borderColor = [UIColor clearColor];
    }
    return borderColor;
}


@end